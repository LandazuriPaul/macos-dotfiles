#!/bin/bash

# PATH for yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# PATH for nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# PATH for JAVA
export M2_HOME=/Users/infobc4/Documents/apache-maven-3.3.3
export PATH=$PATH:$M2_HOME/bin:$HOME/.local/bin:$JAVA_HOME

# PATH for yarn
export PATH="$PATH:`yarn global bin`"

# Setting PATH for Go
export GOPATH="$HOME/Documents/Development/go"
export PATH="$PATH:$GOPATH/bin"

# Settings for pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

