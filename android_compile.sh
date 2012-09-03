TCHAIN=/BUILD/CM10/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/arm-eabi-
make ARCH=arm CROSS_COMPILE=$TCHAIN endeavoru_android_defconfig 
patch -p0 --verbose < patch_no_wext.diff
make ARCH=arm CROSS_COMPILE=$TCHAIN -j8 
