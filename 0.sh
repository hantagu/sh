sudo dnf -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf -y install gnome-shell gnome-backgrounds gnome-terminal gnome-terminal-nautilus nautilus gnome-text-editor evince eog file-roller gnome-disk-utility gnome-tweaks firefox
sudo dnf -y install bash-completion ffmpeg cups wireguard-tools fuse flatpak

sudo systemctl set-default graphical.target

sudo systemctl stop firewalld.service
sudo systemctl disable firewalld.service
