#
# Paths for all Computers
#
if [[-d ~/.composer/vendor/bin]]; then
    # Composer vendor bin path
    export PATH=$PATH:~/.composer/vendor/bin
fi

if [[-d ~/.config/composer/vendor/bin]]; then
    export PATH=$PATH:~/.config/composer/vendor/bin
fi

# Android SDK Tools
android_sdks=~/ws/src/android-sdks
if [[-d "$android_sdks"]]; then
    export PATH=$PATH:${android_sdks}/tools 
    # Android SDK Platform Tools
    export PATH=$PATH:${android_sdks}/platform-tools
fi

