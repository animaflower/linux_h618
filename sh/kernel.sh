# sudo apt update
# sudo apt install -y git make gcc bc bison flex libssl-dev \
# libncurses5-dev libelf-dev build-essential \
# u-boot-tools device-tree-compiler python3

# make ARCH=arm64 mrproper

# sudo apt install gcc-aarch64-linux-gnu

# make O=./build ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- tinyconfig

# make O=./build ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- defconfig

# make -j$(nproc) O=./build ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-

# 可选
# make O=./build ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- modules_install INSTALL_MOD_PATH=./mod_rootfs
