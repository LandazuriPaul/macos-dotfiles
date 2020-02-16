# Initialize the dotfiles local repo
git init --bare $HOME/.dotfiles

# Set up the dotfiles alias
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Avoid untracked files to be shown by git status command
dotfiles config --local status.showUntrackedFiles no

# Persist the dotfiles alias into the .bash_aliases at first line
(echo "# Tracking dotfiles alias\nalias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'\n" && cat $HOME/.bash_aliases) > tmp && mv tmp $HOME/.bash_aliases

# Update actual shell prompt
source $HOME/.bashrc
source $HOME/.zshrc
