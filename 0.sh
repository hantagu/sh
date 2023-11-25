sudo dnf -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf -y install gnome-shell gnome-backgrounds gnome-console nautilus gnome-text-editor evince loupe totem file-roller gnome-disk-utility gnome-software gnome-tweaks firefox
sudo dnf -y install tar fuse flatpak ffmpeg bash-completion git cups wireguard-tools 

mkdir -p ~/.local/share/fonts
curl -sL https://raw.githubusercontent.com/hantagu/sh/main/ubuntu-font-family-0.83.tar.xz | tar -C ~/.local/share/fonts -Jx

sudo systemctl disable --now avahi-daemon.socket avahi-daemon.service

sudo systemctl set-default graphical.target
