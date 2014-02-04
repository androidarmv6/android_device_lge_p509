-include vendor/lge/p509/BoardConfigVendor.mk
-include device/lge/msm7x27-common/BoardConfigCommon.mk

TARGET_KERNEL_CONFIG := cyanogenmod_p509_defconfig
BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=p509 no_console_suspend
ifneq (eng,$(TARGET_BUILD_VARIANT))
COMMON_GLOBAL_CFLAGS += -DBOARD_CHARGING_CMDLINE_NAME='"lge.reboot"' -DBOARD_CHARGING_CMDLINE_VALUE='"pwroff"'
else
# Real recovery size
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
endif
TARGET_BOOTLOADER_BOARD_NAME := p509
TARGET_OTA_ASSERT_DEVICE := thunderg,p509
TARGET_RECOVERY_FSTAB := device/lge/p509/fstab.p509

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/p509/bluetooth

P500_SPEAKER_IN_CALL_FIX := true
