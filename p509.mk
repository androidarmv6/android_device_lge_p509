PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

$(call inherit-product, device/lge/msm7x27-common/device.mk)
$(call inherit-product-if-exists, vendor/lge/p509/p509-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/p509/overlay

# p509 configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thunder_keypad.kl:system/usr/keylayout/thunder_keypad.kl \
    $(LOCAL_PATH)/configs/thunder_keypad.kcm.bin:system/usr/keychars/thunder_keypad.kcm.bin \
    $(LOCAL_PATH)/configs/touch_mcs6000.idc:system/usr/idc/touch_mcs6000.idc

# p509 init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.p509.rc:root/init.p509.rc \
    $(LOCAL_PATH)/ueventd.p509.rc:root/ueventd.p509.rc

# p509 Audio
PRODUCT_PACKAGES += \
    audio_policy.p509 \
    audio.primary.p509

# Live wallpapers
PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Full-featured build of the Open-Source
$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := p509
PRODUCT_DEVICE := p509
PRODUCT_MODEL := LG-P509

