#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from universal3475-common
include device/samsung/universal3475-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/j2lte

TARGET_OTA_ASSERT_DEVICE := j2lte

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Network Routing
TARGET_NEEDS_NETD_DIRECT_CONNECT_RULE := true

# RIL
BOARD_MODEM_TYPE := tss310
BOARD_PROVIDES_LIBRIL := true
BOARD_NEEDS_ROAMING_PROTOCOL_FIELD := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_j1xlte

# Partitions
BOARD_HAS_NO_MISC_PARTITION:= false
TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_CACHEIMAGE_PARTITION_SIZE := 202211328
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4831838208
BOARD_FLASH_BLOCK_SIZE := 4096

# Kernel
TARGET_KERNEL_CONFIG := lineage-j2lte_defconfig

# Shim
TARGET_LD_SHIM_LIBS += \
    /system/lib/libcamera_client.so|/vendor/lib/libcamera_client_shim.so \
    /system/lib/libstagefright.so|/system/lib/libstagefright_shim.so \
    /system/lib/libexynoscamera.so|/vendor/lib/libexynoscamera_shim.so

# Legacy BLOB Support
TARGET_PROCESS_SDK_VERSION_OVERRIDE += \
    /system/vendor/bin/hw/rild=27
