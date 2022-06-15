# paths
PREFIX = /usr
DEST_DIR = $(PREFIX)/local/bin

install:
	mkdir -p $(DEST_DIR)
	cp -rf click $(DEST_DIR)
	chmod +x $(DEST_DIR)/click
	cp -rf com $(DEST_DIR)
	chmod +x $(DEST_DIR)/com
	cp -rf genshin_impact $(DEST_DIR)
	chmod +x $(DEST_DIR)/genshin_impact
	cp -rf minecraft $(DEST_DIR)
	chmod +x $(DEST_DIR)/minecraft
	cp -rf mnt $(DEST_DIR)
	chmod +x $(DEST_DIR)/mnt
	cp -rf toggleTouchScreen.sh $(DEST_DIR)
	chmod +x $(DEST_DIR)/toggleTouchScreen.sh
	cp -rf ttl.sh $(DEST_DIR)
	chmod +x $(DEST_DIR)/ttl.sh
	cp -rf wallpaper.sh $(DEST_DIR)
	chmod +x $(DEST_DIR)/wallpaper.sh
	cp -rf watch_disks.sh $(DEST_DIR)
	chmod +x $(DEST_DIR)/watch_disks.sh
	cp -rf watch_swaps.sh $(DEST_DIR)
	chmod +x $(DEST_DIR)/watch_swaps.sh
	cp -rf meet $(DEST_DIR)
	chmod +x $(DEST_DIR)/meet

uninstall:
	rm -rf $(DEST_DIR)/click
	rm -rf $(DEST_DIR)/com
	rm -rf $(DEST_DIR)/genshin_impact
	rm -rf $(DEST_DIR)/minecraft
	rm -rf $(DEST_DIR)/mnt
	rm -rf $(DEST_DIR)/toggleTouchScreen.sh
	rm -rf $(DEST_DIR)/ttl.sh
	rm -rf $(DEST_DIR)/wallpaper.sh
	rm -rf $(DEST_DIR)/watch_disks.sh
	rm -rf $(DEST_DIR)/watch_swaps.sh
	rm -rf $(DEST_DIR)/meet
