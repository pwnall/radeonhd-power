DESTDIR?=/usr

permissions:
	chmod 755 src/radeonhd-power
	chmod 644 src/radeonhd-power.service

install:
	install --mode=u=rw-x,go=-rwx,a-s src/radeonhd-power.service ${DESTDIR}/lib/systemd/system/
	install src/radeonhd-power ${DESTDIR}/bin/
