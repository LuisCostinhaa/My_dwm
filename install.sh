#!/bin/bash

#################### 	Trizen			####################
git clone https://aur.archlinux.org/trizen.git
cd trizen
makepkg -si
cd ..
sudo rm -r trizen

####################	Chaotic		########
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
cd My_settings
sudo cp -r pacman.conf /etc
cd ..
trizen -Syu

####################	Xorg		####################
trizen -Syu --noconfirm xorg-server xorg-xinit xorg-xrandr xorg-xsetroot libx11 \
libxft libxinerama xf86-video-amdgpu 

####################	Utils		####################
trizen -S --noconfirm git gvfs gvfs-nfs lsd bash-completion base-devel \
picom xdg-user-dirs numlockx bat dash lxsession zsh zsh-syntax-highlighting \
zsh-autosuggestions python-pywal16 nwg-look

####################	Xfce4		####################
trizen -S --noconfirm xfce4-screenshooter thunar thunar-archive-plugin

####################	fonts		####################
trizen -S --noconfirm ttf-ubuntu-font-family ttf-font-awesome \
ttf-cascadia-mono-nerd ttf-joypixels

####################	Apps		####################
trizen -S --noconfirm btop nano alacritty xarchiver ristretto meld \
keepassxc gnome-calculator-gtk3 gnome-disk-utility polkit-gnome sublime-text-4 \
rofi brave-bin feh waypaper checkupdates-systemd-git themix-full-git \
fastfetch zen-browser
trizen -Sy --noconfirm darktable-git opencl-amd

####################	Display		####################
#sudo pacman -S --noconfirm lightdm lightdm-gtk-greeter
trizen -S --noconfirm ly

####################	AudioServer	####################
trizen -S --noconfirm pulseaudio alsa-utils pamixer pavucontrol-gtk3

####################	CopyConfigs	####################
cd My_settings/scripts
sudo cp -r * /usr/local/bin/
cd ..
cd casa
sudo cp -r .icons ~
sudo cp -r .themes ~
sudo cp .bashrc ~
sudo cp .zshrc ~
sudo cp .xinitrc ~
sudo cp .Xresources ~
cd ..
sudo cp -r grub /etc/default
sudo cp -r makepkg.conf /etc
sudo cp -r backgrounds /usr/share
sudo cp -r X11/Xresources /etc/X11/
Thunar
cd ..

####################	000		####################

#trizen -Syu --noconfirm zen-browser-bin brave-bin blesh-git
#trizen -Sy --noconfirm stremio macchina lxappearance-gtk3 
#sudo pacman -Sy dysk

####################	ServiceManager	####################
#sudo systemctl enable lightdm.service
sudo systemctl enable ly.service
sudo grub-mkconfig -o /boot/grub/grub.cfg

####################		#########

cd config
sudo cp -r * ~/.config
cd
sudo chown -R ${USER}:${USER} *
cd ~/.config/suckless/dmenu/
sudo make clean install
cd ..
cd dwm
sudo make clean install
cd ..
cd dwmblocks
sudo make clean install

####################	ZSH		####################
sudo chsh -s /bin/zsh root
chsh -s /bin/zsh ${MYHOSTNM}
