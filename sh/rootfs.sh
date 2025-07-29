tar -xjf busybox-1.36.1.tar.bz2

make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- mrproper

make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- defconfig

make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- menuconfig

make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- -j$(nproc)



#制作
mkdir -p rootfs/{bin,sbin,etc,proc,sys,usr/{bin,sbin},dev,tmp,mnt,root,var}

chmod +x rootfs/bin/busybox

chmod 755 tmp


#BusyBox 以多种命令名调用，自动对应不同 applet：
qemu-aarch64 ./busybox --list | xargs -I{} ln -sf busybox {}


#ini 脚本
cat > rootfs/init << 'EOF'
#!/bin/sh
mount -t proc proc /proc
mount -t sysfs sysfs /sys

echo "Welcome to minimal BusyBox rootfs"

exec /bin/sh
EOF

chmod +x rootfs/init


sudo mknod -m 622 dev/console c 5 1
sudo mknod -m 666 dev/null c 1 3
sudo mknod -m 666 dev/zero c 1 5
sudo mknod -m 666 dev/tty c 5 0


