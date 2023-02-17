say_hello:
	@echo "Use install flag to perform installation."
	@echo "Use uninstall flag to perform uninstallation."

install:
	@echo "copying binary to /usr/local/bin.."
	cp basic-battery-stat /usr/local/bin

uninstall:
	@echo "Uninstalling ..."
	rm /usr/local/bin/basic-battery-stat
