#!/bin/bash
BACKUP_FOLDER="$HOME/.config-backup"


###
# Functions
###
function dotfiles {
  /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}

# Move and create intermediate directories if needed
mvp () {
  dir="$2"
  tmp="$2"; tmp="${tmp: -1}"
  [ "$tmp" != "/" ] && dir="$(dirname "$2")"
  [ -a "$dir" ] ||
  mkdir -p "$dir" &&
  mv "$@"
}

backupFiles () {
  while read file; do
    dest="$BACKUP_FOLDER/$file"
    mvp "$file" "$dest"
    echo "        $file"
  done
}


###
# Core script
###


# Clone the git repo
echo "1. Cloning the dotfiles repo into $HOME/.dotfiles..."
git clone --bare git@github.com:LandazuriPaul/macos-dotfiles.git $HOME/.dotfiles
if [[ $? != 0 ]]; then
  echo
  echo "/!\\Something went wrong while cloning the git repository!"
  exit 1
fi;

# Checkout the master branch
echo
echo "2. Git checkout..."
dotfiles checkout > /dev/null 2>&1

# Save existing dotfiles and checkout the repo
if [ $? = 0 ]; then
  echo "   > Checked out dotfiles.";
  else
    echo "   > First attempt failed. You may have conflicting existing dot files."

    # Backup of the conflicting files
    echo "   > Moving following conflicting dot files into $BACKUP_FOLDER:"
    mkdir -p $BACKUP_FOLDER
    dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | backupFiles

    # Checkout the master branch again
    echo "   > Git checkout (second attempt)..."
    dotfiles checkout  > /dev/null 2>&1
    if [[ $? != 0 ]]; then
      echo
      echo "/!\\ Something went wrong during last checkout attempt!"
      exit 1
      else
        echo "   > Second checkout succeeded"
    fi;
fi;

# Avoid useless dirty status
echo
echo "3. Git config showUntrackedFiles set to \"no\"."
echo "   This option forces git to show only explicitly tracked files in the git status."
dotfiles config status.showUntrackedFiles no

echo
echo "You're now ready to version your dotfiles with the \"dotfiles\" command (replacing git)."
exit 0
