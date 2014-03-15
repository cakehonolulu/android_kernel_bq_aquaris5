#Export CROSS_COMPILE to point toolchain
#export CROSS_COMPILE=/home/dr-shadow/faea/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin/arm-eabi-
export CROSS_COMPILE=../arm-linux-androideabi-4.6/bin/arm-linux-androideabi-

#Target Product
export TARGET_KERNEL_PRODUCT=aquaris5

#Create directory for your device
mkdir -p out/$TARGET_KERNEL_PRODUCT/

#Kernel part
make -j16
cp arch/arm/boot/zImage out/$TARGET_KERNEL_PRODUCT/zImage

#Modules part
make modules
make INSTALL_MOD_STRIP=1 INSTALL_MOD_PATH=./out/$TARGET_KERNEL_PRODUCT/system INSTALL_MOD_DIR=./out/$TARGET_KERNEL_PRODUCT/system android_modules_install
