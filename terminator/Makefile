all:

install: all
	apt-get -y install terminator
	install -o root -g root -m 755 -d /etc/terminator
	install -o root -g root -m 644 config /etc/terminator/config
	install -o root -g root -m 755 terminator-run /usr/local/bin/terminator-run
	ln -sf /usr/local/bin/terminator-run /etc/alternatives/x-terminal-emulator

diff:
	diff -Nu /etc/terminator/config config || true
	diff -Nu /usr/local/bin/terminator-run terminator-run || true

clean:
