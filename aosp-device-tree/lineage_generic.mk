#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from generic device
$(call inherit-product, device/xiaomi/generic/device.mk)

PRODUCT_DEVICE := generic
PRODUCT_NAME := lineage_generic
PRODUCT_BRAND := Android
PRODUCT_MODEL := mainline
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="missi-user 15 AP3A.240617.008 OS2.0.101.0.VNNCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/missi/missi:15/AP3A.240617.008/OS2.0.101.0.VNNCNXM:user/release-keys
