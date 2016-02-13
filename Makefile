FIREFOXURL=https://download.mozilla.org/?product=firefox-latest\&os=linux64\&lang=en-US
CHROMEURL=https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

DIRS=        \
  feh        \
  i3         \
  terminator \
  x11        \
  xdm        \

PACKAGES=          \
  fonts-liberation \
	gconf-service    \
	libappindicator1 \
	libcurl3         \
	libgconf-2-4     \
	libnspr4         \
	libnss3          \
	libpango1.0-0    \
  scrot            \
  xfe              \
  xscreensaver     \

all:

install: all
	$(foreach DIR, $(DIRS), make -C $(DIR) install && ) true
	apt-get -y install $(PACKAGES)
	if [ ! -f /usr/local/firefox/firefox ]; then                \
		wget $(FIREFOXURL) -O firefox.tar.bz2;                    \
	  tar -jxf firefox.tar.bz2;                                 \
	  mv firefox /usr/local/;                                   \
	  ln -sf /usr/local/firefox/firefox /usr/local/bin/firefox; \
	fi
	# needed to get Google Chrome running in Jessie
	if [ ! -f /usr/bin/google-chrome-stable ]; then \
		wget $(CHROMEURL) -O chrome.deb;              \
		dpkg -i chrome.deb;                           \
	fi
	xhost si:localuser:root || true

diff:
	$(foreach DIR, $(DIRS), make -C $(DIR) diff && ) true

clean:
	$(foreach DIR, $(DIRS), make -C $(DIR) clean && ) true
