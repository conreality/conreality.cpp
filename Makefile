prefix        = /usr/local
exec_prefix   = $(prefix)
libdir        = $(exec_prefix)/lib
includedir    = $(prefix)/include
datarootdir   = $(prefix)/share

HEADERS      := conreality.hpp

# The default target:

all: $(HEADERS)

# Rules for verification:

test: check

check: lint

# Rules for installation:

installdirs:
	install -d $(DESTDIR)$(includedir)

install: installdirs $(HEADERS)
	install -c -m 0644 conreality.hpp $(DESTDIR)$(includedir)

installcheck:

# Rules for uninstallation:

uninstall:
	-rm -f $(DESTDIR)$(includedir)/conreality.hpp

# Rules for development:

lint: lint-hpp

lint-hpp:
	@printf '%s\n' $(HEADERS) | sort | xargs -n1 $(CC) -x c++-header -std=c++17 -Wall -Wextra -fsyntax-only

clean:
	@rm -Rf *~

distclean: clean

mostlyclean: clean

maintainer-clean: clean

.PHONY: all test check installdirs install installcheck uninstall
.PHONY: lint lint-hpp clean distclean mostlyclean maintainer-clean
.SECONDARY:
.SUFFIXES:
