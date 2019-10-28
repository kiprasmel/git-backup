.POSIX:

OS = $(shell uname -s)
ifeq ($(OS), Darwin)
  PREFIX = /usr/local
else
  PREFIX = /usr
endif
MANPREFIX = $(PREFIX)/share/man

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	for script in bin/*; do \
		cp -f $$script $(DESTDIR)$(PREFIX)/bin/; \
		chmod 755 $(DESTDIR)$(PREFIX)/$$script; \
	done
	mkdir -p $(DESTDIR)$(MANPREFIX)/man1
	cp -f git-backup.1 $(DESTDIR)$(MANPREFIX)/man1/git-backup.1

uninstall:
	for scriptPath in bin/*; do \
		scriptFile=$$(basename $$scriptPath); \
		rm -f $(DESTDIR)$(PREFIX)/bin/$$scriptFile; \
	done;
	rm -f $(DESTDIR)$(MANPREFIX)/man1/git-backup.1

.PHONY: install uninstall
