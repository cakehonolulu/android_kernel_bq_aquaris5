SuKa Kernel    for bq Aquaris 5
===============================

INSTRUCTIONS:
-Download arm-linux-androideabi-4.6 from my github account and put in the same folder where you have downloaded the source code, not in the kernel folder.
-From terminal, run: ./build.sh
-When it finished, both zImage and kernel modules will be in the out folder.
-Now, with dsixda kitchen or similar, repack the boot.img with the new generated zImage and old ramdisk.
-Flash boot.img and .ko modules to your aquaris 5 and enjoy. ;)

WARNING: The zImage doesn't boot yet.
