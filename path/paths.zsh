#
# Paths for all Computers
#
if [[ `hostname` == 'lac' ]]; then
    # Home Linux

    # Composer vendor bin path
    export PATH=$PATH:~/.composer/vendor/bin/
    
    # Android SDK Tools
    # android_sdks=/mnt/data/src/android-sdks
    # export PATH=$PATH:${android_sdks}/tools 
    # Android SDK Platform Tools
    #export PATH=$PATH:${android_sdks}/platform-tools
fi

