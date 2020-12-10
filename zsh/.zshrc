source $XDG_CONFIG_HOME/aliases/aliases
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

fpath+=$XDG_CONFIG_HOME/zsh/prompt/pure
autoload -U promptinit; promptinit
autoload -Uz compinit; compinit

prompt pure
eval "$(direnv hook $SHELL)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/dagadark/google-cloud-sdk/path.zsh.inc' ]; then . '/home/dagadark/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/dagadark/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/dagadark/google-cloud-sdk/completion.zsh.inc'; fi
