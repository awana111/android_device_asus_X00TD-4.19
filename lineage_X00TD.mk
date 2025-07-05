#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common crDroid stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

TARGET_BUILD_DEVICE_AS_WEBCAM := true

# EvoX flags.
BUILD_BCR := true
EVO_BUILD_TYPE := Unofficial
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_ACCORD := false
TARGET_SUPPORT_BOOT_ANIMATIONS := true
WITH_GMS := true

# Inherit some common device props
TARGET_FACE_UNLOCK_SUPPORTED := true
SYSTEM_OPTIMIZE_JAVA := true
SYSTEMUI_OPTIMIZE_JAVA := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_SUPPORTS_QUICK_TAP := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M1
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=ASUS_X00TD
