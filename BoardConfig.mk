# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6580
TARGET_NO_BOOTLOADER := true
# TARGET_NO_KERNEL := false

# Platform
TARGET_BOARD_PLATFORM := mt6580

# Architecture
#TARGET_ARCH := arm
#TARGET_ARCH_VARIANT := armv7-a-neon
#TARGET_CPU_ABI := armeabi-v7a
#TARGET_CPU_ABI2 := armeabi
#TARGET_CPU_VARIANT := cortex-a53

TARGET_BOARD_PLATFORM := mt6580
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7

# Board **
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_NEON := true
TARGET_ARCH_VARIANT_CPU := cortex-a7
 
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_NO_FACTORYIMAGE := true
 
TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

# Kernel
TARGET_PREBUILT_KERNEL := device/umi/w370/kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32S1,32S1 androidboot.selinux=permissive
	
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
# BOARD_KERNEL_SEPARATED_DT := false
BOARD_RAMDISK_OFFSET := 0x04000000
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x04000000 --tags_offset 0x0e000000 --board 1480324125

# Partition
TARGET_USERIMAGES_USE_EXT4          := true
BOARD_BOOTIMAGE_PARTITION_SIZE      := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE  := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE    := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 5142740992
BOARD_CACHEIMAGE_PARTITION_SIZE     := 268435456
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE   := ext4
# BOARD_PERSISTIMAGE_PARTITION_SIZE   := 
# BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE              := 131072 # BOARD_KERNEL_PAGESIZE * 64

# Mediatek flags
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL -DDISABLE_ASHMEM_TRACKING
COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

# Recovery
TW_NO_REBOOT_BOOTLOADER := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0/gadget/lun%d/file
RECOVERY_SDCARD_ON_DATA := true
TW_INCLUDE_FB2PNG := true

# TWRP
HAVE_SELINUX := true
TWHAVE_SELINUX := true
TW_THEME := portrait_hdpi
TW_EXCLUDE_SUPERSU := true

TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness/
TW_MAX_BRIGHTNESS := 255
RECOVERY_GRAPHICS_USE_LINELENGTH := true

#Use this for tablets ...
#RECOVERY_TOUCHSCREEN_SWAP_XY := true
#RECOVERY_TOUCHSCREEN_FLIP_Y := true

# RECOVERY_TOUCHSCREEN_FLIP_X := true
# RECOVERY_GRAPHICS_FORCE_SINGLE_BUFFER := true
# TWRP_EVENT_LOGGING := true
# BOARD_HAS_FLIPPED_SCREEN := true

# if sdcard0 is a /data/media emulated one
# RECOVERY_SDCARD_ON_DATA := true
# TW_INCLUDE_NTFS_3G := true

# DEBUG (BOTH needed to enable logcat)
# TARGET_USES_LOGD := true
# TWRP_INCLUDE_LOGCAT := true

# Encryption
# TARGET_HW_DISK_ENCRYPTION := true
TW_INCLUDE_CRYPTO := true
BOARD_SUPPRESS_SECURE_ERASE :=  true

# CPU temp
TW_CUSTOM_CPU_TEMP_PATH := /sys/class/thermal/thermal_zone1/temp

