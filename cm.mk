# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration for p509.
$(call inherit-product, device/lge/p509/p509.mk)

TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 320
TARGET_BOOTANIMATION_HALF_RES := true
$(call inherit-product, vendor/cm/config/mini.mk)

# Overrides
PRODUCT_NAME := cm_p509
PRODUCT_BRAND := lge
PRODUCT_DEVICE := p509
PRODUCT_MODEL := LG-P509
PRODUCT_MANUFACTURER := LGE
PRODUCT_CHARACTERISTICS := phone

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusT
PRODUCT_VERSION_DEVICE_SPECIFIC :=

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lge_p500 \
    BUILD_FINGERPRINT="lge/thunderg/thunderg:2.2.2/GRI40/LG-P509-V10g.19C11F164C:user/release-keys" \
    PRIVATE_BUILD_DESC="thunderg-user 2.2.2 GRI40 LG-P509-V10g.19C11F164C release-keys"
