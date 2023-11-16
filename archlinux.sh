echo "export DISPLAY=${DISPLAY}" > ${HOME}/.fxfx.env
echo "export DBUS_SESSION_BUS_ADDRESS=${DBUS_SESSION_BUS_ADDRESS}" >> ${HOME}/.fxfx.env
proot-distro login --termux-home --shared-tmp \
--user vinhhp \
--bind $PREFIX:$PREFIX \
--bind $PREFIX/var/lib/dbus:/var/lib/dbus \
--bind $PREFIX/tmp:/run/dbus \
archlinux -- bash -c ". .fxfx.env && $@"
