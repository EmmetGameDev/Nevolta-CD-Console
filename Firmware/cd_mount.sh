#!/bin/bash
DEVICE="/dev/$1"
STAGING=/userdata/system/cdrom-staging

mount "$DEVICE" "$STAGING" 2>/dev/null

declare -A EXT_MAP=(
	[gba]=gba
	[nes]=nes
	[sfc]=snes
	[smc]=snes
	[wad]=prboom
)

for ext in "${!EXT_MAP[@]}"; do
	system="${EXT_MAP[$ext]}"
	find "$STAGING" -maxdepth 2 -iname "*.${ext}" | while read -r f; do
		ln -sf "$f" "/userdata/roms/${system}/cdrom/$(basename "$f")"
	done
done