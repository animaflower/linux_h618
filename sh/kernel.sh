#!/bin/bash
set -e

# sudo apt update

# sudo apt install gcc-aarch64-linux-gnu

# sudo apt install -y git make gcc bc bison flex libssl-dev \
# libncurses5-dev libelf-dev build-essential \
# u-boot-tools device-tree-compiler python3

# sudo tar -xf linux-6.15.8.tar.xz

# sudo make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- mrproper

# sudo make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- defconfig

# sudo scripts/config --disable MODULES # 禁用模块支持

# sudo make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- olddefconfig

# sudo make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- menuconfig

# 可以去掉的模块
# Virtualization  
# Networking support 
# Platform selection 
# Device Drivers > Graphics support >  Direct Rendering Manager
# PCI
# File systems > Dnotify support       Filesystem wide access notification       Quota support    FUSE   EFI Variable filesystem 

# sudo make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- tinyconfig

# sudo make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- -j$(nproc) 

# 可选
# sudo make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- modules_install INSTALL_MOD_PATH=./mod_rootfs