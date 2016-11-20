all: build

TOPKG=build clean test
.PHONY: $(TOPKG) install uninstall reinstall

$(TOPKG):
	topkg $@

# Convenience targets for development.
# OPAM is used for normaldistribution

DISTFILES=distwit.a distwit.cma distwit.cmi distwit.cmx distwit.cmxa distwit.cmxs distwit.mli

install:
	ocamlfind install distwit pkg/META $(foreach FILE,$(DISTFILES), _build/lib/$(FILE))

uninstall:
	ocamlfind remove distwit

reinstall:
	@$(MAKE) uninstall
	$(MAKE) install
