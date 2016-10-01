SOURCE=${0%/*}

# Lib

source $SOURCE/lib/key-bindings.zsh
source $SOURCE/lib/misc.zsh
source $SOURCE/lib/completion.zsh
source $SOURCE/lib/git.zsh
source $SOURCE/lib/php.zsh
source $SOURCE/lib/history.zsh
source $SOURCE/lib/spectrum.zsh

# Aliases
source $SOURCE/aliases/aliases.zsh

# Custom things
# source $SOURCE/custom/load.zsh
# source $SOURCE/custom/z.zsh

# Various functions
source $SOURCE/functions/functions.zsh

# Paths
source $SOURCE/path/paths.zsh

# AWS completion
source $SOURCE/completion/aws.zsh

# Colors
source $SOURCE/colors/config.zsh
