setenv bootargs console=ttyS0,115200 root=/dev/mmcblk0p1 init=/init rw rootwait

fatload mmc 0:1 0x42000000 Image
fatload mmc 0:1 0x45C00000 sun50i-h618-orangepi-zero2w.dtb

booti 0x42000000 - 0x45C00000