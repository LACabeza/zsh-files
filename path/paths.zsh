#
# Paths for all Computers
#

#  Add the ~/bin/ directory for all users
export PATH=$PATH:~/bin

#
# OS Specific Paths
#

# OS X Aliases
if [[ $CURRENT_OS == 'OS X' ]]; then
    #
    # Prefixed Paths
    #

    # Prefix /usr/local/bin for brew
    export PATH=/usr/local/bin:$PATH

    #
    # Normal Paths
    #

    # Add all npm packages
    export PATH=$PATH:/usr/local/share/npm/bin

elif [[ $CURRENT_OS == 'Linux' ]]; then
    # Prefix /usr/local/bin for brew if it exists
    # if hash brew 2>/dev/null; then
    #     export PATH="$HOME/.linuxbrew/bin:$PATH"
    #     export LD_LIBRARY_PATH="$HOME/.linuxbrew/lib:$LD_LIBRARY_PATH"
    # fi

    # CentOS Paths
    # if [[ $DISTRO == 'CentOS' ]]; then
    #     # Add LaTeX to path
    #     export PATH=$PATH:/usr/local/texlive/2013/bin/x86_64-linux
    # fi

    #
    # User Specific Aliases
    #

    if [[ $HOST == 'lac' ]]; then
        # Home Linux
        
        # Android SDK Tools
        android_sdks=/mnt/data/src/android-sdks
        export PATH=$PATH:${android_sdks}/tools 
        # Android SDK Platform Tools
        export PATH=$PATH:${android_sdks}/platform-tools
    fi
elif [[ $CURRENT_OS == 'Cygwin' ]]; then
    #
fi
