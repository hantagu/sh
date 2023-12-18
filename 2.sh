HISTFILE=/dev/null

if [[ ! -f $PREFIX/share/bash-completion/bash_completion ]]
then
    yes | pkg update
    termux-setup-package-manager
    termux-change-repo
    yes | pkg upgrade
    yes | pkg install man manpages gnupg openssl-tool openssh micro
    yes | pkg install clang python
    ln -s /storage/emulated/0 storage
fi

alias c="clear"
alias rm="rm -rf"
alias ls="ls --group-directories-first"
alias ll="ls --group-directories-first -A"
alias ps="ps -eHo comm,pid,ppid,pgid,sid,tty"

alias m="micro"
alias p="python3"
