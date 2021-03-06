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

# Resolution
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Kernel properties
TARGET_KERNEL_CONFIG := aosp_yukon_seagull_defconfig

# Assert
TARGET_OTA_ASSERT_DEVICE := D5103,seagull

# Recovery
TARGET_RECOVERY_FSTAB := device/sony/seagull/rootdir/fstab.yukon

# Inherit from seagull device
$(call inherit-product, device/sony/seagull/aosp_d5103.mk)

# Inherit from common resources
$(call inherit-product, device/sony/common/resources.mk)

# Inherit CM common stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=D5103 \
    BUILD_FINGERPRINT=Sony/D5103/D5103:4.4.2/18.1.A.1.21/6vt_bw:user/release-keys \
    PRIVATE_BUILD_DESC="D5103-user 4.4.2 18.1.A.1.21 6vt_bw release-keys"

PRODUCT_NAME := cm_seagull
PRODUCT_DEVICE := seagull
