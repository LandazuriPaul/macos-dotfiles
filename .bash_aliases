# Tracking dotfiles alias
alias dotfiles='/usr/bin/git --git-dir=/Users/paul/.dotfiles/ --work-tree=/Users/paul'

# Load common aliases
source ~/.aliases/common.sh

# Load local aliases
[ -f ~/.aliases/local.sh ] && source ~/.aliases/local.sh
