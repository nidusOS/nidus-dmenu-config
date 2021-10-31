#!/bin/sh
rm -rf nidus-dmenu-*
makepkg -cf --sign
mv *.pkg.tar.zst* ../nidus-core-repo/x86_64/
rm -rf nidus-dmenu-*
