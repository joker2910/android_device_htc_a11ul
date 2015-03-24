# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Model Ids
# 0PCV20000 - International

BOARD_USES_GENERIC_AUDIO := true
USE_CAMERA_STUB := true

BOARD_VENDOR := htc

LOCAL_PATH := device/htc/a11ul

# inherit from the proprietary version
-include vendor/htc/a11ul/BoardConfigVendor.mk

# Platform
TARGET_HARDWARE_3D := false
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := MSM8916

# Target information
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RPC := true

# Kernel [Settings]
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x02008000 --tags_offset 0x01e00000 --dt device/htc/a11ul/dt.img

# Kernel [Build]
#TARGET_KERNEL_CONFIG := a11ul_defconfig
#TARGET_KERNEL_SOURCE := kernel/htc/a11ul
#TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.7

# Prebuilt Kernel
TARGET_PREBUILT_KERNEL := device/htc/a11ul/kernel

# OpenGL drivers config file path
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
USE_OPENGL_RENDERER := true

# Shader cache config options
# Maximum size of the  GLES Shaders that can be cached for reuse.
# Increase the size if shaders of size greater than 12KB are used.
MAX_EGL_CACHE_KEY_SIZE := 12*1024

# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
MAX_EGL_CACHE_SIZE := 2048*1024

# Graphics
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_QCOM_DISPLAY_VARIANT := caf-new
TARGET_HAVE_NEW_GRALLOC := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := true
TARGET_USES_NEW_ION_API := true
TARGET_USES_ION := true
TARGET_USES_QCOM_BSP := true

# Enables Adreno RS driver
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# Media
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
TARGET_QCOM_MEDIA_VARIANT := caf-new

# FM
TARGET_QCOM_NO_FM_FIRMWARE := true

#cat /proc/emmc
#dev:        size     erasesize name
#mmcblk0p1: 00100000  00000200  "sbl1"
#mmcblk0p2: 02000000  00000200  "pg1fs"
#mmcblk0p3: 00004000  00000200  "board_info"
#mmcblk0p4: 00ef7c00  00000200  "reserve_1"
#mmcblk0p5: 00040000  00000200  "mfg"
#mmcblk0p6: 017afc00  00000200  "pg2fs"
#mmcblk0p7: 00040000  00000200  "sbl1_update"
#mmcblk0p8: 00040000  00000200  "rpm"
#mmcblk0p9: 00200000  00000200  "tz"
#mmcblk0p10: 00008000  00000200  "sdi"
#mmcblk0p11: 00400000  00000200  "hboot"
#mmcblk0p12: 00500000  00000200  "sp1"
#mmcblk0p13: 00200000  00000200  "hyp"
#mmcblk0p14: 00100000  00000200  "wifi"
#mmcblk0p15: 00008000  00000200  "ddr"
#mmcblk0p16: 00100000  00000200  "dsps"
#mmcblk0p17: 00500000  00000200  "wcnss"
#mmcblk0p18: 00100000  00000200  "rfg_0"
#mmcblk0p19: 00100000  00000200  "rfg_1"
#mmcblk0p20: 00100000  00000200  "rfg_2"
#mmcblk0p21: 00100000  00000200  "rfg_3"
#mmcblk0p22: 00100000  00000200  "rfg_4"
#mmcblk0p23: 00100000  00000200  "rfg_5"
#mmcblk0p24: 00100000  00000200  "rfg_6"
#mmcblk0p25: 00100000  00000200  "rfg_7"
#mmcblk0p26: 00180000  00000200  "fsg"
#mmcblk0p27: 04b00400  00000200  "radio"
#mmcblk0p28: 00400000  00000200  "tool_diag"
#mmcblk0p29: 00b00000  00000200  "reserve_2"
#mmcblk0p30: 00100000  00000200  "misc"
#mmcblk0p31: 00180000  00000200  "modem_st1"
#mmcblk0p32: 00180000  00000200  "modem_st2"
#mmcblk0p33: 01400000  00000200  "fataldevlog"
#mmcblk0p34: 00001000  00000200  "debug_config"
#mmcblk0p35: 00040000  00000200  "pdata"
#mmcblk0p36: 00004000  00000200  "control"
#mmcblk0p37: 00140400  00000200  "local"
#mmcblk0p38: 00010000  00000200  "extra"
#mmcblk0p39: 00100000  00000200  "cdma_record"
#mmcblk0p40: 00000400  00000200  "fsc"
#mmcblk0p41: 00002000  00000200  "ssd"
#mmcblk0p42: 00040000  00000200  "skylink"
#mmcblk0p43: 01900000  00000200  "carrier"
#mmcblk0p44: 01400000  00000200  "devlog"
#mmcblk0p45: 00500000  00000200  "backup_hboot"
#mmcblk0p46: 02328800  00000200  "reserve"
#mmcblk0p47: 01000000  00000200  "boot"
#mmcblk0p48: 01000000  00000200  "recovery"
#mmcblk0p49: 14000000  00000200  "cache"
#mmcblk0p50: a0000000  00000200  "system"
#mmcblk0p51: 08000000  00000200  "userdata"

# Partitions Sizes
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE := 335544320
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 134217728
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4429185024
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_USES_MMCUTILS := true
BOARD_VOLD_MAX_PARTITIONS := 52

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Qualcomm support
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP
BOARD_USES_QCOM_HARDWARE := true

# Recovery
#RECOVERY_VARIANT := philz
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_RECOVERY_SWIPE := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB := device/htc/a11ul/recovery.fstab
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true

# TWRP config:
DEVICE_RESOLUTION := 480x854
TW_NO_USB_STORAGE := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/ext_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "ext_sd"
TW_NO_SCREEN_BLANK := true
TW_MAX_BRIGHTNESS := 255
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_IGNORE_MT_POSITION_0 := true
TW_INCLUDE_DUMLOCK := true

# Power
TARGET_POWERHAL_VARIANT := qcom

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

PRODUCT_BOOT_JARS := $(subst $(space),:,$(PRODUCT_BOOT_JARS))
