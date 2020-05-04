DESTDIR ?= /usr/local/bin

install:
	@sudo cp hash.py $(DESTDIR)/alian-hash
	@sudo chmod +x $(DESTDIR)/alian-hash
	@echo "alian_hash Successful install!"

uninstall:
	@sudo rm -f $(DESTDIR)/alian-hash
	@echo "alian_hash has been removed"
