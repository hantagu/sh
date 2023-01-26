sudo dnf -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf -y install gnome-shell gnome-backgrounds gnome-terminal gnome-terminal-nautilus nautilus gnome-text-editor evince eog file-roller gnome-disk-utility gnome-tweaks firefox
sudo dnf -y install bash-completion docker git ffmpeg cups wireguard-tools fuse flatpak

curl --output "tmp.zip" -sL https://fonts.google.com/download?family=Ubuntu && unzip -qq -u -d ~/.local/share/fonts "tmp.zip" && rm "tmp.zip"
curl --output "tmp.zip" -sL https://fonts.google.com/download?family=Ubuntu%20Mono && unzip -qq -u -d ~/.local/share/fonts "tmp.zip" && rm "tmp.zip"

sudo usermod -aG docker $USER

sudo systemctl enable docker.service
sudo systemctl start docker.service

sudo systemctl set-default graphical.target
