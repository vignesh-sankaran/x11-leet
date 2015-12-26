FIREFOXURL=https://download.mozilla.org/?product=firefox-latest\&os=linux64\&lang=en-US

DIRS=        \
  feh        \
  i3         \
  terminator \
  x11        \
  xdm        \

PACKAGES=      \
  scrot        \
  xfe          \
  xscreensaver \

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
	aptitude install gconf-service libgconf-2-4 libnspr4 libnss3 libpango1.0-0 libappindicator1 libcurl3

diff:
	$(foreach DIR, $(DIRS), make -C $(DIR) diff && ) true

clean:
	$(foreach DIR, $(DIRS), make -C $(DIR) clean && ) true
