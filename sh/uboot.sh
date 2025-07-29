# git clone --depth 1 https://source.denx.de/u-boot/u-boot.git

make mrproper

make distclean

# 1. 设置 defconfig
make  CROSS_COMPILE=aarch64-linux-gnu- O=build orangepi_zero2w_defconfig

# 2. 编译
make  BL31=bl31.bin CROSS_COMPILE=aarch64-linux-gnu- O=build -j$(nproc)