RUN COMMAND
```
pkg install root-repo x11-repo -y
termux-change-repo
pkg upgrade
termux-change-repo
pkg install rust golang termux-x11-nightly openssh termux-api vim-gtk neovim firefox xclip -y
pkg install xfce4-session xfce4-goodies -y
```
Create file startxfce.sh
```
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
