DESTDIR?=/usr

permissions:
	chmod 755 src/radeonhd-power
	chmod 644 src/radeonhd-power.service

install:
	mkdir -p ${DESTDIR}/lib/systemd/system
	install --mode=u=rw-x,go=r-wx,a-s src/radeonhd-power.service ${DESTDIR}/lib/systemd/system
	mkdir -p ${DESTDIR}/bin
	install src/radeonhd-power ${DESTDIR}/bin
