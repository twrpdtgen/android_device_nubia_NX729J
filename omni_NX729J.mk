#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from NX729J device
$(call inherit-product, device/nubia/NX729J/device.mk)

PRODUCT_DEVICE := NX729J
PRODUCT_NAME := omni_NX729J
PRODUCT_BRAND := nubia
PRODUCT_MODEL := NX729J
PRODUCT_MANUFACTURER := nubia

PRODUCT_GMS_CLIENTID_BASE := android-nubia

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="NX729J-user 13 TKQ1.221013.002 eng.nubia.20230205.024800 release-keys"

BUILD_FINGERPRINT := nubia/NX729J/NX729J:13/TKQ1.221013.002/eng.nubia.20230205.024800:user/release-keys
