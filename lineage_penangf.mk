#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0

DEVICE_PATH := device/motorola/penangf

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from penangf device
$(call inherit-product, device/motorola/penangf/device.mk)

PRODUCT_DEVICE := penangf
PRODUCT_NAME := lineage_penangf
PRODUCT_BRAND := motorola
PRODUCT_MODEL := penangf
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="penangf_g-user 13 THA33.31-31 64 release-keys"
