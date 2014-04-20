# DESTDIR used by Debian
prefix?=$(DESTDIR)/usr/local
BINDIR=$(prefix)/bin

all:

install:
	-mkdir -p $(BINDIR)
	cp yle-dl $(BINDIR)

uninstall:
	rm -f $(BINDIR)/yle-dl

# Uninstall librtmp and plugin installed by pre-2.0 versions
PLUGINDIR=$(prefix)/lib/librtmp/plugins
MANDIR=$(prefix)/man
LIBDIR=$(prefix)/lib
uninstall-old-rtmpdump:
	rm -f $(BINDIR)/rtmpdump
	rm -f $(BINDIR)/rtmpdump-yle
	rm -f $(PLUGINDIR)/yle.*
	rm -f $(LIBDIR)/librtmp.*
	rm -f $(LIBDIR)/pkgconfig/librtmp.pc
	rm -f $(MANDIR)/man1/rtmpdump.1
	rm -f $(MANDIR)/man3/librtmp.3
	rm -f $(MANDIR)/man8/rtmpgw.8
