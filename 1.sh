for i in ~/.local/bin/*; do
    if [ -d $i/bin ]; then
        PATH=$i/bin:$PATH
    elif [ -d $i ]; then
        PATH=$i:$PATH
    fi
done

PATH=~/.local/bin:$PATH

if [ -f /etc/bashrc ]; then
    source /etc/bashrc
fi
