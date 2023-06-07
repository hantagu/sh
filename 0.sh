sudo dnf -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf -y install gnome-shell gnome-backgrounds gnome-console nautilus gnome-text-editor evince eog file-roller gnome-disk-utility gnome-tweaks firefox
sudo dnf -y install bash-completion docker git ffmpeg cups wireguard-tools fuse flatpak

sudo usermod -aG docker $USER

mkdir -p ~/.local/share/fonts
curl -sL https://raw.githubusercontent.com/hantagu/sh/main/Ubuntu.tar.xz | tar -C ~/.local/share/fonts -Jx

sudo systemctl disable avahi-daemon.socket avahi-daemon.service
sudo systemctl stop avahi-daemon.socket avahi-daemon.service

sudo systemctl enable docker.service
sudo systemctl start docker.service

sudo systemctl set-default graphical.target
