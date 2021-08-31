# $OpenBSD: dot.profile,v 1.7 2020/01/24 02:09:51 okan Exp $
#
# sh/ksh initialization

PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games
ENV=$HOME/.kshrc
LANG=en_US.UTF-8
export PATH HOME TERM ENV LANG

# colorize_exitcode() {
#   echo $?
#   [ $1 -eq 0 ] && echo "\[\\033[0;32m\]" || echo "\[\\033[0;31m\]"
# }

PS1="\w\n\$\[\\033[0m\] "

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
