
#!/bin/bash
# 编译 init.c 为 ARM64 静态可执行文件
aarch64-linux-gnu-gcc -static -o init init.c