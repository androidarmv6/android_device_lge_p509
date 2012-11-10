-include vendor/lge/p509/BoardConfigVendor.mk
-include device/lge/msm7x27-common/BoardConfigCommon.mk

TARGET_KERNEL_CONFIG := cyanogenmod_p500_p509_defconfig
BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=p509 no_console_suspend

TARGET_BOOTLOADER_BOARD_NAME := p509
TARGET_OTA_ASSERT_DEVICE := thunderg,p509

USE_CAMERA_STUB := false

# Enable ICS-backwards compatibility    
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT
# Disable PIE since it breaks ICS camera blobs
TARGET_DISABLE_ARM_PIE := true

# Use ICS Audio blobs
COMMON_GLOBAL_CFLAGS += -DICS_AUDIO_BLOB
TARGET_PROVIDES_LIBAUDIO := true
