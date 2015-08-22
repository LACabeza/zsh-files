#
# Aliases for all Computers
#

# Builtin aliases
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -al'

# Some cd aliases
alias back='cd -'

# ......
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'

alias .w='cd ~/ws'
alias .s='cd /mnt/data/src'
alias .d='cd /mnt/data'
#
alias .h='cd /home'
alias .e='cd /etc'
alias .v='cd /var'
alias .u='cd /usr/local'
alias .t='cd /tmp'

alias rsed="sed -i 's/\r//g'"

# ZSH Global Aliases
alias -g L=' | less'
alias -g T=' | tail -20'
alias -g NUL=' > /dev/null 2>&1'

# I like to be safe...
alias rm='rm -i'

# derp derp
alias mkdirp='mkdir -p'

#
# OS Specific Aliases
#

#
# User Specific Aliases
#
if [[ $USER == 'alysson' ]]; then
    #
	alias iphp="rlwrap -a php -a"
fi

# OS X Aliases
if [[ $CURRENT_OS == 'OS X' ]]; then
    # Hidden files
    alias showhiddenfiles='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder'
    alias hidehiddenfiles='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder'

    alias 'kb-disable'='sudo kextunload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext/'
    alias 'kb-enable'='sudo kextload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext/'

    #
    # Application aliases
    #
    alias vine='open -a Vine\ Server'
    alias ss='/System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine &'

    # Open from command line
    alias finder='open -a Finder '

elif [[ $CURRENT_OS == 'Linux' ]]; then
    #
    # Global Linux
    #

    # Misc Aliases
    alias ls='ls --color=auto'

    # MVim == GVim on Linux
    alias mvim='gvim'

    # Extensions
    alias -s html=$BROWSER
    alias -s pdf=epdfview
    alias -s txt=$EDITOR
    alias -s text=$EDITOR

    # Images
    alias -s png=feh
    alias -s jpeg=feh
    alias -s jpg=feh
    alias -s gif=feh

    # Source Extensions
    alias -s hs=$EDITOR
    alias -s c=$EDITOR

elif [[ $CURRENT_OS == 'Cygwin' ]]; then
    alias py='/cygdrive/c/Python27/python'
fi
