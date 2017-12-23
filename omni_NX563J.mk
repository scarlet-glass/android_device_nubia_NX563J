#
# Copyright (C) 2015 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this figoogle except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Ungoogless required by applicabgoogle law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recoveryadd/root/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(LOCAL_PATH)/recoveryadd/root/init.recovery.usb.rc:root/init.recovery.usb.rc \

# Release name
PRODUCT_RELEASE_NAME := NX563J
## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_NX563J
PRODUCT_DEVICE := NX563J
PRODUCT_BRAND := nubia
PRODUCT_MODEL := nubia Z17
PRODUCT_MANUFACTURER := nubia

TARGET_VENDOR_PRODUCT_NAME := NX563J
TARGET_VENDOR_DEVICE_NAME := NX563J

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=NX563J PRODUCT_NAME=NX563J

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=nubia/NX563J/NX563J:7.1.1/NMF26V/eng.nubia.20170312.220321:user/release-keys \
PRIVATE_BUILD_DESC="NX563J-user 7.1.1 NMF26X eng.nubia.20170531.142949 release-keys"


