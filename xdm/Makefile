all:

install: all
	apt-get -y install xdm
	install -o root -g root -m 644 Xsetup /etc/X11/xdm/Xsetup

diff:
	diff -Nu /etc/X11/xdm/Xsetup Xsetup || true

clean:
