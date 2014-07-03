-include vendor/lge/p509/BoardConfigVendor.mk
-include device/lge/msm7x27-common/BoardConfigCommon.mk

TARGET_BOOTLOADER_BOARD_NAME    := p509
TARGET_OTA_ASSERT_DEVICE        := thunderg,p509
TARGET_RECOVERY_FSTAB           := device/lge/p509/fstab.p509
BOARD_KERNEL_CMDLINE            := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=p509 no_console_suspend

ifneq (eng,$(TARGET_BUILD_VARIANT))
# Don't include charger detection in recovery mode
TARGET_KERNEL_CONFIG                := cyanogenmod_p509_defconfig
BOARD_CHARGING_CMDLINE_NAME         := "lge.reboot"
BOARD_CHARGING_CMDLINE_VALUE        := "pwroff"
else
# Real recovery size 0x00500000. Use lzma.
TARGET_KERNEL_CONFIG                := cyanogenmod_p509_defconfig
BOARD_RECOVERYIMAGE_PARTITION_SIZE  := 5242880
MINIGZIP                            := $(shell which lzma)
endif

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/p509/bluetooth
