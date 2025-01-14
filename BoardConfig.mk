USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/zeroltetmo/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := zeroltetmo

# Platform

TARGET_BOARD_PLATFORM := exynos7420
TARGET_BOARD_PLATFORM_GPU := mali-t760mp8

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60  

# Architecture
# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset  0x01000000 --dt device/samsung/zeroltetmo/dtb --tags_offset 0x0000100
BOARD_KERNEL_SEPARATED_DT := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x360000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x360000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x30000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x130000000
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
TARGET_RECOVERY_INITRC := device/samsung/zeroltetmo/init.rc

# Kernel Configs
#TARGET_KERNEL_SOURCE := kernel/samsung/zeroltetmo
#TARGET_KERNEL_CONFIG := exynos7420-zeroltetmo_tmo_defconfig
#TARGET_KERNEL_SELINUX_CONFIG := 
#TARGET_KERNEL_VARIANT_CONFIG :=
#VARIANT_CONFIG :=
#TIMA_DEFCONFIG :=
TARGET_PREBUILT_KERNEL := device/samsung/zeroltetmo/kernAl

#BOARD_NEEDS_LZMA_MINIGZIP := true

#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file

# Recovery:Start

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_SUPPRESS_SECURE_ERASE := true

# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_BRIGHTNESS_PATH := "/sys/devices/13900000.dsim/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_MTP_DEVICE := /dev/usb_mtp_gadget
TW_INCLUDE_CRYPTO := true
TW_SCREEN_BLANK_ON_BOOT := true
