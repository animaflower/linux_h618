setenv bootargs root=/dev/mmcblk0p2 vt.global_cursor_default=0 init=/helloworld rw rootwait

load mmc 0:1 0x40080000 Image
load mmc 0:1 0x50000000 sun50i-h618-orangepi-zero2w.dtb

booti 0x40080000 - 0x50000000