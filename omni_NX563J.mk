#
# Copyright 2017 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := NX563J

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := NX563J
PRODUCT_NAME := omni_NX563J
PRODUCT_BRAND := nubia
PRODUCT_MODEL := nubia Z17
PRODUCT_MANUFACTURER := nubia

TARGET_VENDOR_PRODUCT_NAME := NX563J
TARGET_VENDOR_DEVICE_NAME := NX563J
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=NX563J \
    BUILD_PRODUCT=NX563J \
    PRODUCT_NAME=NX563J

# Verity
PRODUCT_SUPPORTS_BOOT_SIGNER := true
PRODUCT_SUPPORTS_VERITY := true
PRODUCT_SUPPORTS_VERITY_FEC := true
PRODUCT_VERITY_SIGNING_KEY := build/target/product/security/verity