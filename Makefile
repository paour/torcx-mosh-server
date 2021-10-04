build: torcx.tgz torcx.squashfs

mosh-server:
	wget -q https://github.com/dtinth/mosh-static/releases/download/run-2/mosh-server -O mosh-server
	chmod +x mosh-server

torcx: mosh-server
	mkdir -p rootfs/bin
	cp mosh-server rootfs/bin/

torcx.tgz: torcx
	tar -C rootfs -czf torcx.tgz .

torcx.squashfs: torcx
	mksquashfs rootfs torcx.squashfs
