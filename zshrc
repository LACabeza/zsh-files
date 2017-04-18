# See how to install here http://arteymix.github.io/2015/01/20/just-discovered-zsh
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=2000
setopt appendhistory autocd extendedglob notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/alysson/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#source ~/.bindkeys

# History search
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down
# End of History search

# Use antigen + oh-my-zsh
ADOTDIR=~/.local/share/antigen
source /usr/local/lib/antigen/antigen.zsh

antigen use oh-my-zsh

# Plugins

antigen bundle git
antigen bundle history

antigen bundle LACabeza/zsh-files

# Completions
antigen bundle zsh-users/zsh-completions src
#antigen bundle zsh-users/zsh-history-substring-search

# Themes
BULLETTRAIN_TIME_SHOW=false
BULLETTRAIN_CONTEXT_SHOW=true
BULLETTRAIN_CONTEXT_DEFAULT_USER=alysson
BULLETTRAIN_CONTEXT_HOSTNAME=%M
BULLETTRAIN_EXEC_TIME_SHOW=true
BULLETTRAIN_GIT_COLORIZE_DIRTY=true
BULLETTRAIN_HG_SHOW=false
antigen theme LACabeza/bullet-train-oh-my-zsh-theme bullet-train

##antigen theme LACabeza/zsh-files themes/agnoster

# Load everything in
antigen apply

# The next line updates PATH for the Google Cloud SDK.
if [ -f /usr/local/share/google-cloud-sdk/path.zsh.inc ]; then
  source '/usr/local/share/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /usr/local/share/google-cloud-sdk/completion.zsh.inc ]; then
  source '/usr/local/share/google-cloud-sdk/completion.zsh.inc'
fi
