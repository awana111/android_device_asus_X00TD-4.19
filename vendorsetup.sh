#clone device common tree
rm -rf device/asus/sdm660-common
git clone --depth=1 https://github.com/awana111/android_device_asus_sdm660-common-4.19 -b Pixelage device/asus/sdm660-common

# Clone vendor tree
rm -rf vendor/asus
git clone --depth=1 https://github.com/awana111/proprietary_vendor_asus-4.19 -b 15.0 vendor/asus

# Clone prebuilt kernel
rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/awana111/android_kernel_asus_sdm660-4.19 -b Apatch kernel/asus/sdm660

#Sign-Key
rm -rf vendor/lineage-priv
git clone https://github.com/ardia-kun/vendor -b 14-backup vlp && cp -R vlp/* vendor/ && rm -rf vlp

export PIXELAGE_BUILD=X00TD
export BUILD_USER=awana
export KBUILD_BUILD_USER=awana
export TZ=Asia/Jakarta
