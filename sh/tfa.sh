#git clone --depth 1 https://github.com/TrustedFirmware-A/trusted-firmware-a.git
#cd trusted-firmware-a
make realclean
make CROSS_COMPILE=aarch64-linux-gnu- PLAT=sun50i_h616
cd ..