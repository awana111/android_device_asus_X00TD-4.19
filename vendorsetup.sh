#clone device common tree
rm -rf device/asus/sdm660-common
git clone --depth=1 https://github.com/awana111/android_device_asus_sdm660-common-4.19 -b voltage device/asus/sdm660-common

# Clone vendor tree
rm -rf vendor/asus
git clone --depth=1 https://github.com/awana111/proprietary_vendor_asus-4.19 -b 15.0 vendor/asus

# Clone prebuilt kernel
rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/SonicBSV/android_kernel_asus_sdm660-4.19 -b Ratibor-Rebased-master kernel/asus/sdm660

#Sign-Key
rm -rf vendor/voltage-priv/keys
croot && git clone https://github.com/VoltageOS/vendor_voltage-priv_keys vendor/voltage-priv/keys
cd vendor/voltage-priv/keys
./keys.sh
cd ../../..
