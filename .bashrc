#!/bin/bash

# Any space prefixed command will be ignored for history
# And all mutliple commands too
HISTCONTROL=ignoreboth

# Fuzzy finder integration
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# iTerm2 integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# nvm integration
source ~/.nvm.sh
