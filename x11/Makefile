all:

install:
	apt-get -y install xserver-xorg
	install -o root -g root -m 644 42xscreensaver /etc/X11/Xsession.d/42xscreensaver

diff:
	diff -Nu /etc/X11/Xsession.d/42xscreensaver 42xscreensaver || true

clean:
