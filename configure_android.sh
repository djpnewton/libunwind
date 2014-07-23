#!/bin/sh

set -e

NDK_TOOLCHAIN=/opt/android-ndk-r9b/toolchains/arm-linux-androideabi-4.8/prebuilt/linux-x86_64
PREFIX=${NDK_TOOLCHAIN}/bin/arm-linux-androideabi-
SYSROOT=/opt/android-ndk-r9b/platforms/android-9/arch-arm

autoreconf -i

./configure CC=${PREFIX}gcc CPPFLAGS="--sysroot=${SYSROOT}" CFLAGS="-march=armv7-a -mthumb -mfpu=vfp -mfloat-abi=softfp --sysroot=${SYSROOT}" LDFLAGS="--sysroot=${SYSROOT}" -host=arm-linux-androideabi --prefix=/tmp/libunwind_inst LIBS="-lc -lgcc"


