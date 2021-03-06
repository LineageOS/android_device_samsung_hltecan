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

# Inherit device configuration
$(call inherit-product, device/samsung/hltecan/full_hltecan.mk)

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=hltevl TARGET_DEVICE=hltecan BUILD_FINGERPRINT="samsung/hltevl/hltecan:4.3/JSS15J/N900W8VLUBMJ4:user/release-keys" PRIVATE_BUILD_DESC="hltevl-user 4.3 JSS15J N900W8VLUBMJ4 release-keys"

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_hltecan
PRODUCT_DEVICE := hltecan
PRODUCT_MODEL := SM-N900W8

