#
# Copyright (C) 2021 The CherishOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Cherish stuff.
$(call inherit-product, vendor/cherish/config/common.mk)

# Inherit from lmi device
$(call inherit-product, device/xiaomi/lmi/device.mk)

PRODUCT_NAME := cherish_lmi
PRODUCT_DEVICE := lmi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F2 Pro
CHERISH_BUILD_TYPE := UNOFFICIAL
WITH_GMS := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lmi-user 12 RKQ1.211001.001 V13.0.3.0.SJKMIXM release-keys"

BUILD_FINGERPRINT := Redmi/lmi/lmi:12/RKQ1.211001.001/V13.0.3.0.SJKMIXM:user/release-keys
