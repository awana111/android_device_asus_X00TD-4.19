#clone device common tree
rm -rf device/asus/sdm660-common
git clone --depth=1 https://github.com/ikwfahmi/android_device_asus_sdm660-common-4.19 -b Spark device/asus/sdm660-common

rm -rf hardware/qcom-caf/msm8998//audio
git clone --depth=1 https://github.com/SonicBSV/android_hardware_qcom-caf_msm8998_audio-4.19 hhardware/qcom-caf/msm8998//audio

rm -rf hardware/qcom-caf/msm8998/display
git clone --depth=1 https://github.com/SonicBSV/android_hardware_qcom-caf_msm8998_display-4.19 hardware/qcom-caf/msm8998/display

rm -rf hardware/qcom-caf/msm8998/media
git clone --depth=1 https://github.com/SonicBSV/android_hardware_qcom-caf_msm8998_media-4.19 hardware/qcom-caf/msm8998/media

# Clone vendor tree
rm -rf vendor/asus
git clone --depth=1 https://github.com/ikwfahmi/proprietary_vendor_asus-4.19 -b lineage-20.0 vendor/asus

# Clone kernel tree
rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/Tiktodz/android_kernel_asus_sdm660 -b stable kernel/asus/sdm660

#Sign-Key
rm -rf vendor/lineage-priv/keys
rm -rf vendor/lineage/signing/keys
mkdir -p vendor/lineage-priv/keys
git clone https://github.com/electrolaboratory/public-keys vendor/lineage-priv/keys/
