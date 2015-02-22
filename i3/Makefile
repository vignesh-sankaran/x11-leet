all:

install: all
	apt-get -y install i3
	install -o root -g root -m 644 config /etc/i3/config

diff:
	diff -Nu /etc/i3/config config || true

clean:
