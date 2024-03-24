sudo steamos-readonly disable
sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman-key --populate holo
sed -i "23i SigLevel = TrustAll" /etc/pacman.conf
sudo pacman -Syu
sudo pacman -S base-devel
sudo pacman -S dhcp
sudo pacman -S dhcpcd
sudo pacman -S openssl-1.1
sudo pacman -S ffmpegthumbs
sudo pacman -S wine
makepkg -si
cd lol
makepkg -si
cd ..
sudo pacman -U easytether.tar.xz
sudo easytether-usb
sudo sudo dhcpcd tap-easytether
systemctl start dhcpcd@tap\\x2deasytether
