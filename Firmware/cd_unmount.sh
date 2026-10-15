#!/bin/bash
rm -f /userdata/roms/gba/cdrom/*
rm -f /userdata/roms/nes/cdrom/*
rm -f /userdata/roms/snes/cdrom/*
rm -f /userdata/roms/prboom/cdrom/*
umount /userdata/system/cdrom-staging 2>/dev/null