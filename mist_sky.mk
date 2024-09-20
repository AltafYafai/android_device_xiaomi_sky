#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/sky

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Configure full_base_telephony.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common Crdroid configurations
$(call inherit-product, vendor/mist/config/common_full_phone.mk)

$(call inherit-product, vendor/mist/config/BoardConfigReservedSize.mk)

# Inherit device configurations
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/sky/sky-vendor.mk)

## Device identifier
PRODUCT_DEVICE := sky
PRODUCT_NAME := mist_sky
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23076RN4BI
PRODUCT_MANUFACTURER := Xiaomi

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Maintainer name for MistOS

MIST_MAINTAINER := "Altaf_Yafai"

# Adding Blur support

TARGET_SUPPORTS_BLUR := true

# Build GAPPS

# WITH_GAPPS := true

# Build Vanilla

WITH_GAPPS := false

# Build Launcher3 in GAPPS (default is Pixel Launcher)

TARGET_INCLUDE_PIXEL_LAUNCHER := false


