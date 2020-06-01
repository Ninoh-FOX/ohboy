#!/bin/bash
set -e
umask 0022

# Write metadata.
cat > default.gcw0.desktop <<EOF
[Desktop Entry]
Name=OhBoy
Type=Application
Exec=ohboy.gcw0 %f
Icon=ohboy
Comment=GB/GBC Emulator
Terminal=false
Categories=emulators;
MimeType=application/x-gameboy-rom;application/x-gbc-rom;application/zip;application/gzip;
EOF

# Create OPK.
OPK_FILE=ohboy.opk
mksquashfs \
	default.gcw0.desktop \
	ohboy.png \
	ohboy.gcw0 \
	etc/* \
	$OPK_FILE \
	-no-progress -noappend -comp gzip -all-root

echo
echo "=========================="
echo
echo "Updater OPK:       $OPK_FILE"
echo
