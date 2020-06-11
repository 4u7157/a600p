#!/bin/bash

export ARCH=arm64
export CROSS_COMPILE="ccache ../toolchain/bin/aarch64-linux-gnu-"
export ANDROID_MAJOR_VERSION=q

make exynos7885-a6eltespr_defconfig
make -j$(nproc --all)
