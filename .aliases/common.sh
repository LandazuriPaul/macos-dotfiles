# General aliases
alias ..='cd ..'
alias ll='ls -lAhFGW'
alias top='htop'
alias md='mkdir'
alias otop='/usr/bin/top'
alias nv='nvim'

# Mac specifics
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES;killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# PC specifics
alias tmp='cd ~/Documents/Development/tmp/'
alias dev='cd ~/Documents/Development/'

# Yarn
alias yb='yarn build'
alias yd='yarn dev'
alias yw='yarn watch'
alias ys='yarn start'
alias ysd='yarn start:dev'
alias ysp='yarn start:prod'

# NPM
alias ns='npm run start'
alias nsd='npm run start:dev'
alias nsp='npm run start:prod'
alias nb='npm run build'

# DevOps tools
alias kb='kubectl'
alias tf='terraform'
alias dc='docker-compose'

