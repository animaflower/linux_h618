# sudo apt update
# sudo apt install -y git make gcc bc bison flex libssl-dev \
# libncurses5-dev libelf-dev build-essential \
# u-boot-tools device-tree-compiler python3

# sudo tar -xf linux-6.15.8.tar.xz

# sudo make ARCH=arm64 mrproper

# sudo apt install gcc-aarch64-linux-gnu

# sudo make O=./build ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- tinyconfig

# sudo make O=./build ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- defconfig

# sudo make O=./build ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- -j$(nproc) 

# 可选
# sudo make O=./build ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- modules_install INSTALL_MOD_PATH=./mod_rootfs
