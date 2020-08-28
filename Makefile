PREFIX ?= /usr/local
DESTDIR ?=
BINDIR ?= $(PREFIX)/bin
MANDIR ?= $(PREFIX)/share/man

all:
	@echo "Nothing to do, try \"make install\" instead."

install-common:
	@install -v -d "$(DESTDIR)$(MANDIR)/man1" && install -m 0644 -v man/giph.1 "$(DESTDIR)$(MANDIR)/man1/giph.1"

install: install-common
	@install -v -d "$(DESTDIR)$(BINDIR)/" && install -m 0755 -v src/giph "$(DESTDIR)$(BINDIR)/giph"

uninstall:
	@rm -vrf \
		"$(DESTDIR)$(BINDIR)/giph" \
		"$(DESTDIR)$(MANDIR)/man1/giph.1"

.PHONY: install uninstall install-common
