#!/bin/bash

# Any space prefixed command will be ignored for history
# And all mutliple commands too
HISTCONTROL=ignoreboth

# Fuzzy finder integration
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# iTerm2 integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
