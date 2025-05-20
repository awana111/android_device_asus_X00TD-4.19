#clone device common tree
rm -rf device/asus/sdm660-common
git clone --depth=1 https://github.com/ikwfahmi/android_device_asus_sdm660-common-4.19 -b 15.3 device/asus/sdm660-common

# Clone vendor tree
rm -rf vendor/asus
git clone --depth=1 https://github.com/ikwfahmi/proprietary_vendor_asus-4.19 vendor/asus

# Clone prebuilt kernel
rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/Tiktodz/android_kernel_asus_sdm660 -b stable kernel/asus/sdm660
rm -rf kernel/asus/sdm660/KernelSU-Next/userspace

#Sign-Key
rm -rf vendor/lineage-priv/keys
rm -rf vendor/lineage/signing/keys
mkdir -p vendor/lineage-priv/keys
git clone https://github.com/electrolaboratory/public-keys vendor/lineage-priv/keys/
