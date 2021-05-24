# Homebrew
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# sbin
export PATH="/usr/local/sbin:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Go
export GOPATH="$HOME/Documents/Development/go"
export PATH="$PATH:$GOPATH/bin"

# Pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# jEnv integration
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
