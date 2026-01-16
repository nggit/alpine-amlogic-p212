# s905_autoscript
# A vendor-specific boot.scr. Use this for chainloading to mainline U-Boot
# mkimage -A arm64 -T script -C none -d s905_autoscript.cmd s905_autoscript

if usb start; then
    for usbdev in 0 1 2 3; do
        if fatload usb ${usbdev}:1 0x01000000 u-boot.bin; then
            go 0x01000000
        fi
    done
fi

mmc rescan

if fatload mmc 0:1 0x01000000 u-boot.bin; then
    go 0x01000000
fi
