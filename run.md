RUN COMMAND
```
pkg install root-repo x11-repo -y
termux-change-repo
pkg upgrade
termux-change-repo
pkg install rust golang termux-x11-nightly openssh termux-api vim-gtk neovim firefox xclip proot-distro wget -y
pkg install xfce4-session xfce4-goodies -y
```
Create file startxfce.sh
```
pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1
termux-x11 -dpi 300 :1 -xstartup "dbus-launch --exit-with-session xfce4-session"
```
chmod +x startxfce.sh


in XFCE
Application->Settings->Appearance
Tab Window -> Scale2 
Tab Font -> DPI 100


Settings->Keyboard
Tab Behavor-> Repeat Delay:225 - Repeat Speed:32

Settings->Mouse And Toucpad
Tab Theme: Cursor size:50

```
proot-distro install archlinux
add /etc/environment
PKG_CONFIG_PATH=/usr/share/pkgconfig:/usr/lib/pkgconfig:/usr/local/lib/pkgconfig
```

```
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip
unzip -d $PREFIX/share/fonts/TTF/ Hack.zip
```
