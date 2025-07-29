
#分区
lsblk

sudo umount /dev/sdb1
sudo umount /dev/sdb2

sudo fdisk /dev/sdb

Command (m for help): o       ← 清除分区表

Command (m for help): n       ← 新建分区1
Partition type: p             ← 主分区（默认）
Partition number: 1           ← 分区号
First sector: (直接回车)       ← 默认
Last sector: +256M            ← 设置为 256MB

Command (m for help): t       ← 修改分区1的类型
Partition number: 1
Hex code (type L to list all): c     ← FAT32 (W95 LBA)

Command (m for help): n       ← 新建分区2
Partition type: p
Partition number: 2
First sector: (直接回车)
Last sector: (直接回车)       ← 用剩余所有空间

Command (m for help): p       ← 打印分区表检查一遍（可选）

Command (m for help): w       ← 写入分区表并退出


sudo mkfs.vfat -F 32 /dev/sdb1       # 分区1 格式化为 FAT32
sudo mkfs.ext4 /dev/sdb2            # 分区2 格式化为 ext4


#烧录uboot
sudo dd if=u-boot-sunxi-with-spl.bin of=/dev/sdb bs=1k seek=8

#启动脚本
mkimage -A arm64 -T script -C none -n "Boot script" -d boot.cmd boot.scr

#复制文件
sudo cp -a ./rootfs/. /media/liangqi/ce1e6c97-8fa0-4565-ad81-4b4ff9a08c82/
