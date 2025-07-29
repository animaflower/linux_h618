
# 基础字符设备支持
scripts/config --enable CONFIG_PRINTK
scripts/config --enable CONFIG_EARLY_PRINTK
scripts/config --enable CONFIG_CONSOLE
scripts/config --enable CONFIG_PANIC_ON_OOPS
scripts/config --enable CONFIG_VT
scripts/config --enable CONFIG_VT_CONSOLE
scripts/config --enable CONFIG_UNIX

# 串口驱动支持（8250 是全志平台通用串口驱动）
scripts/config --enable CONFIG_SERIAL_8250
scripts/config --enable CONFIG_SERIAL_8250_CONSOLE
scripts/config --enable CONFIG_SERIAL_8250_DW       # DesignWare 串口，如有用到
scripts/config --enable CONFIG_SERIAL_CORE

# 虚拟终端
scripts/config --enable CONFIG_TTY
scripts/config --enable CONFIG_DEVKMEM

# 内存支持（tmpfs 和 initrd/initramfs）
scripts/config --enable CONFIG_TMPFS
scripts/config --enable CONFIG_TMPFS_POSIX_ACL
scripts/config --enable CONFIG_BLK_DEV_INITRD

# 设备节点支持（如 /dev/console）
scripts/config --enable CONFIG_DEVTMPFS
scripts/config --enable CONFIG_DEVTMPFS_MOUNT

# 挂载 proc 和 sysfs 所需
scripts/config --enable CONFIG_PROC_FS
scripts/config --enable CONFIG_SYSFS

# 支持 init 脚本（/init）
scripts/config --enable CONFIG_INIT_SCRIPT

# 文件系统支持（最常见的是 ext4）
scripts/config --enable CONFIG_EXT4_FS
scripts/config --enable CONFIG_VFAT_FS
scripts/config --enable CONFIG_MSDOS_FS
scripts/config --enable CONFIG_FAT_FS

# MMC/SD卡支持（用于 rootfs 来自 SD 卡）
scripts/config --enable CONFIG_MMC
scripts/config --enable CONFIG_MMC_BLOCK
scripts/config --enable CONFIG_MMC_SUNXI
scripts/config --enable CONFIG_SUNXI_MMC

# USB（可选）
scripts/config --enable CONFIG_USB_SUPPORT
scripts/config --enable CONFIG_USB
scripts/config --enable CONFIG_USB_EHCI_HCD
scripts/config --enable CONFIG_USB_OHCI_HCD

# 必要的总线与平台支持（针对全志）
scripts/config --enable CONFIG_REGMAP
scripts/config --enable CONFIG_REGMAP_I2C
scripts/config --enable CONFIG_REGMAP_SPI
scripts/config --enable CONFIG_SIMPLE_PM_BUS
scripts/config --enable CONFIG_COMMON_CLK

# Device Tree 支持
scripts/config --enable CONFIG_OF
scripts/config --enable CONFIG_OF_FLATTREE
scripts/config --enable CONFIG_OF_EARLY_FLATTREE
scripts/config --enable CONFIG_OF_ADDRESS
scripts/config --enable CONFIG_OF_IRQ
scripts/config --enable CONFIG_OF_RESERVED_MEM

# 看门狗（可选）
scripts/config --enable CONFIG_WATCHDOG