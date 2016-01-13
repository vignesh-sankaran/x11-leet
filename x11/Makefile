all:

install:
	apt-get -y install xserver-xorg
	install -o root -g root -m 644 42xscreensaver /etc/X11/Xsession.d/42xscreensaver
	install -o root -g root -m 644 X0.hosts /etc/X0.hosts

diff:
	diff -Nu /etc/X11/Xsession.d/42xscreensaver 42xscreensaver || true
	diff -Nu /etc/X0.hosts X0.hosts || true

clean:
