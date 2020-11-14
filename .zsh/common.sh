### Node
source ~/.zsh/nvm.sh

# kubectl completion
source <(kubectl completion zsh)

# The next line updates PATH for the Google Cloud SDK.
if [ -f "${HOME}/scripts/google-cloud-sdk/path.zsh.inc" ]; then . "${HOME}/scripts/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "${HOME}/scripts/google-cloud-sdk/completion.zsh.inc" ]; then . "${HOME}/scripts/google-cloud-sdk/completion.zsh.inc"; fi

# Terraform completion
if [ -f '/usr/local/bin/terraform' ]; then
  autoload -U +X bashcompinit && bashcompinit
  complete -o nospace -C /usr/local/bin/terraform terraform
fi

