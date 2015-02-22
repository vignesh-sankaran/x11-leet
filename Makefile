DIRS=              \
	feh        \
	i3         \
	terminator \
	x11        \
	xdm        \
 
all:

install: all
	$(foreach DIR, $(DIRS), make -C $(DIR) install && ) true

diff:
	$(foreach DIR, $(DIRS), make -C $(DIR) diff && ) true

clean:
	$(foreach DIR, $(DIRS), make -C $(DIR) clean && ) true
