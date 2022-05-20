# paths
PREFIX = /usr
DEST_DIR = "$(PREFIX)/share/bin"

install:
	mkdir -p "$(DEST_DIR)"
	cp -rf click "$(DEST_DIR)"
	cp -rf com "$(DEST_DIR)"
	cp -rf genshin_impact "$(DEST_DIR)"
	cp -rf minecraft "$(DEST_DIR)"
	cp -rf mnt "$(DEST_DIR)"
	cp -rf toggleTouchScreen.sh "$(DEST_DIR)"
	cp -rf ttl.sh "$(DEST_DIR)"
	cp -rf wallpaper.sh "$(DEST_DIR)"

uninstall:
	rm -rf "$(DEST_DIR)/click"
	rm -rf "$(DEST_DIR)/com"
	rm -rf "$(DEST_DIR)/genshin_impact"
	rm -rf "$(DEST_DIR)/minecraft"
	rm -rf "$(DEST_DIR)/mnt"
	rm -rf "$(DEST_DIR)/toggleTouchScreen.sh"
	rm -rf "$(DEST_DIR)/ttl.sh"
	rm -rf "$(DEST_DIR)/wallpaper.sh"
