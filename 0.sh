sudo dnf -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf -y install gnome-shell gnome-backgrounds gnome-console nautilus gnome-text-editor evince eog file-roller gnome-disk-utility gnome-tweaks firefox
sudo dnf -y install bash-completion docker git ffmpeg cups wireguard-tools fuse flatpak

mkdir -p ~/.local/share/fonts
curl -sL https://raw.githubusercontent.com/hantagu/sh/main/Ubuntu.tar.xz | tar -C ~/.local/share/fonts -Jx

sudo usermod -aG docker $USER

read -p "1/2: " x
if [ $x = "1" ]; then
    sudo dnf install xorg-x11-drv-nvidia-cuda
elif [ $x = "2" ]; then
    sudo dnf install @hardware-support
fi

sudo systemctl disable avahi-daemon.socket avahi-daemon.service
sudo systemctl stop avahi-daemon.socket avahi-daemon.service

sudo systemctl enable docker.service
sudo systemctl start docker.service

sudo systemctl set-default graphical.target
