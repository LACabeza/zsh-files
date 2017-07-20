# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

#Disable the ability for less to shell out
LESSSECURE=1
readonly LESSSECURE
export LESSSECURE