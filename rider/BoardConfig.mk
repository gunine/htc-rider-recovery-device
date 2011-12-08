USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/rider/BoardConfigVendor.mk

# inherit from 8x60 recovery for chargemode
-include device/htc/8x60-recovery/BoardConfigCommon.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_USES_ADRENO_200 := true

TARGET_BOOTLOADER_BOARD_NAME := rider

BOARD_KERNEL_CMDLINE := console=ttyHSL0 androidboot.hardware=rider no_console_suspend=1
BOARD_KERNEL_BASE := 0x48000000
BOARD_KERNEL_PAGESIZE := 2048

# Define Prebuilt kernel locations
TARGET_PREBUILT_KERNEL := device/htc/rider/kernel

# cat /proc/emmc
# dev:        size     erasesize name
# mmcblk0p34: 000ffa00 00000200 "misc"
# mmcblk0p22: 00fffc00 00000200 "recovery"
# mmcblk0p21: 01000000 00000200 "boot"
# mmcblk0p23: 31fffc00 00000200 "system"
# mmcblk0p25: 06ebde00 00000200 "cache"
# mmcblk0p24: 4aabc400 00000200 "userdata"

# fix this up by examining /proc/emmc on a running device
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 20044333056
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common

BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_HAS_NO_SELECT_BUTTON := false
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_CUSTOM_GRAPHICS:= ../../../device/htc/rider/graphics.c
