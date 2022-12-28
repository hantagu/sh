for i in ~/.local/bin/*; do
	if [ ! -d $i ]; then
		continue
	fi

	if [ -d $i/bin ]; then
		PATH=$i/bin:$PATH
	else
		PATH=$i:$PATH
	fi
done

if [ -f /etc/bashrc ]; then
	source /etc/bashrc
fi
