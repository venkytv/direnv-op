LIBDIR = $(HOME)/.config/direnv/lib

all:
	@echo "Run 'make install' to install the library"
	@echo
	@echo "Alternatively, to install manually:"
	@echo "  mkdir -p $(LIBDIR)"
	@echo "  cp oprc.sh $(LIBDIR)"

install: $(LIBDIR) $(LIBDIR)/oprc.sh

clean:
	$(RM) $(LIBDIR)/oprc.sh

$(LIBDIR):
	mkdir -p $@

$(LIBDIR)/oprc.sh: oprc.sh
	cp $< $@
