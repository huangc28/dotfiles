# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# fzf default command
export FZF_COMPLETION_TRIGGER='**'
# bindkey '^T' fzf-completion
# bindkey '^I' $fzf_default_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# export FZF_COMPLETION_TRIGGER='**'
# export FZF_COMPLETION_OPTS='--border --info=inline'
# autoload -Uz compinit && compinit
# autoload -Uz bashcompinit && bashcompinit
#
# _fzf_complete_path() {
#   _fzf_complete --reverse --multi --prompt="Path> " -- "$@" < <(
#     find . -type f 2> /dev/null
#   )
# }
#
# _fzf_complete_path_post() {
#   awk '{print $NF}'
# }
#
# zle -N _fzf_complete_path
# zle -N _fzf_complete_path_post
# bindkey '^I' _fzf_complete_path

# export GO path
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin/:$PATH"

# export php composer's system-side vendor bin directory
export PATH=$HOME/.config/composer/vendor/bin:$PATH


# My shell commands
export PATH=$PATH":$HOME/bin"
alias vim="/usr/local/bin/nvim"
source "$HOME/.config/.ssh-agent.sh"

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

#
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# zsh plugins
plugins=(
	git
	z
	zsh-syntax-highlighting
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

export THEOS_DEVICE_IP=192.168.1.4

[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
export PATH="/usr/local/opt/m4/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/google-cloud-sdk/path.zsh.inc' ]; then . '/usr/local/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/usr/local/google-cloud-sdk/completion.zsh.inc' ]; then . '/usr/local/google-cloud-sdk/completion.zsh.inc'; fi

# My custom path alias
export NEET_CODE=$GOPATH/github.com/huangc28/neet_code

# powerlevel10k configs
source /usr/local/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Default editor for 'tig' command
export GIT_EDITOR='nvim'

# Set `pass` password manager to use nvim
export EDITOR='nvim'


