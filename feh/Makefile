all:

install: all
	apt-get -y install feh
	install -o root -m root -m 755 -d /etc/feh
	install -o root -g root -m 644 background.jpg /etc/feh/background.jpg

diff:
	diff -Nu /etc/feh/background.jpg background.jpg || true

clean:
