## Boot Sequence
```
ROM
 |
Vendor U-Boot
 ├─ Android (eMMC)
 ├─ aml_autoscript: runs once during update/recovery mode
 └─ s905_autoscript
       ├─ USB / SD
       │    └─ u-boot.bin (Mainline U-Boot)
       │         └─ extlinux.conf
       |
       └─ fallback Android
```
