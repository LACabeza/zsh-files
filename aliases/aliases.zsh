#
# Aliases for all Computers
#

# Builtin aliases
alias l='ls -CF'
alias la='ls -lahF'
alias ll='ls -lhF'
alias lm='ls -mQ'

# Some cd aliases
alias back='cd -'

# ......
alias ..='cd ..'
alias .h='cd /home'
alias .e='cd /etc'
alias .v='cd /var'
alias .u='cd ~/.local'
alias .t='cd /tmp'

if [ -d ~/ws ]; then
    alias .w='cd ~/ws'
    alias .flaggs='cd ~/ws/flaggs'
    alias .practice='cd ~/ws/practice'
fi
if [ -d /mnt/sda1 ]; then
    alias .d='cd /mnt/sda1'
    alias .w='cd /mnt/sda1/ws'
    alias .flaggs='cd /mnt/data/ws/flaggs'
    alias .practice='cd ~/ws/practice'
fi
#

# ZSH Global Aliases
alias -g q='exit'
alias -g L='less'
alias -g T='tail -20'
alias -g NUL=' > /dev/null 2>&1'

alias bcake='./bin/cake'

# derp derp
alias mkdirp='mkdir -p'

#
# OS Specific Aliases
#
alias suwww='sudo -u www-data'
#
# User Specific Aliases
#
alias bcake='./bin/cake'
alias rsed="sed -i 's/\r//g'"
