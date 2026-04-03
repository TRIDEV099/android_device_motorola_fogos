#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from fogos device
$(call inherit-product, device/motorola/fogos/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/matrixx/config/common_full_phone.mk)

PRODUCT_NAME := matrixx_fogos
PRODUCT_DEVICE := fogos
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g34 5G

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="fogos_g-user 15 V1UGS35H.75-14-3-6 711b06-38b2f release-keys MV-186" \
    BuildFingerprint=motorola/fogos_g/fogos:15/V1UGS35H.75-14-3-6/711b06-38b2f:user/release-keys \
    DeviceProduct=fogos_g

# Matrixx Flags
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120
TARGET_BOOT_ANIMATION_RES := 720
PRODUCT_NO_CAMERA := true
WITH_GMS := true
TARGET_INCLUDE_PIXEL_LAUNCHER := true
WITH_GMS_COMMS_SUITE := true
WITH_GMS_AICORE := true


