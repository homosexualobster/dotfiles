#+ if it will be exported.

screenfetch

alias pacman='sudo pacman'

export EDITOR="vim"

DARKGRAY='\e[1;30m'
LIGHTRED='\e[1;31m'
GREEN='\e[32m'
YELLOW='\e[1;33m'
LIGHTBLUE='\e[1;34m'
NC='\e[m'
song(){
mpc current
}

PCT="\`if [[ \$EUID -eq 0 ]]; then T='$LIGHTRED' ; else T='$LIGHTBLUE'; fi; 
echo \$T \`"

PS1="$DARKGRAY┌─[$PCT\u$DARKGRAY]─[$PCT\w$DARKGRAY]
$DARKGRAY└─────╼ $NC"
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
