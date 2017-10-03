#
# Copyright (C) 2017 The LineageOS Project
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

LOCAL_DEVICE_PATH := device/samsung/j2lte
# inherit from common smdk3470
-include device/samsung/smdk3475-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := j2lte

# Filesystems
# Note: the BOARD_...IMAGE_PARTITION_SIZE values define the image sizes, 
# not the partition sizes. So the image sizes can also be lower than the partition size. 

# Real partition sizes
#BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
#BOARD_CACHEIMAGE_PARTITION_SIZE := 314572800
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2411724800
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 12834570240(-16384)

# Image sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2362232012
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4939212390

# Include path
TARGET_SPECIFIC_HEADER_PATH += $(LOCAL_DEVICE_PATH)/include

# Kernel
TARGET_KERNEL_CONFIG := lineage-j2lte_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/j2lte

# CMHW
BOARD_HARDWARE_CLASS := $(LOCAL_DEVICE_PATH)/cmhw

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_DEVICE_PATH)/bluetooth

# PowerHAL
TARGET_POWERHAL_VARIANT := exynos3

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Sensors
TARGET_PROVIDES_LIBSENSORS := true

# GUI
BOARD_EGL_NEEDS_HANDLE_VALUE := true

# Vendor Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_j2lte
TARGET_LIBINIT_DEFINES_FILE := $(LOCAL_DEVICE_PATH)/init/init_j2lte.cpp

# Recovery
TARGET_RECOVERY_DEVICE_DIRS += $(LOCAL_DEVICE_PATH)
TARGET_RECOVERY_FSTAB := $(LOCAL_DEVICE_PATH)/rootdir/etc/fstab.universal3475
BOARD_HAS_LARGE_FILESYSTEM := true

# TWRP
DEVICE_RESOLUTION := 720x1280
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_NO_SCREEN_BLANK := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_CRYPTO := true
#TW_USE_TOOLBOX := true
TWRP_INCLUDE_LOGCAT := true

# SELinux
BOARD_SEPOLICY_DIRS := \
	$(LOCAL_DEVICE_PATH)/sepolicy
