# termux-note

=======================
run proot => tạo user => sửa uid vs gid trong /etc/passwd
sửa lại file chạy arch
```
echo "export DISPLAY=${DISPLAY}" > ${HOME}/.fxfx.env
echo "export DBUS_SESSION_BUS_ADDRESS=${DBUS_SESSION_BUS_ADDRESS}" >> ${HOME}/.fxfx.env
proot-distro login --termux-home --shared-tmp \
--user vinhhp \
--bind $PREFIX:$PREFIX \
--bind $PREFIX/var/lib/dbus:/var/lib/dbus \
--bind $PREFIX/tmp:/run/dbus \
archlinux -- $@
```
chạy lệnh `. .fxfx.env` để sử dụng DBUS của host

Command check dbus work
***
```
dbus-send --dest=org.freedesktop.DBus --type=method_call --print-reply /org/freedesktop/DBus org.freedesktop.DBus.ListNames
```
