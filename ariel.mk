#
# Copyright 2015 The Android Open Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the long list of APNs
#PRODUCT_COPY_FILES := device/huawei/angler/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit device configuration
$(call inherit-product, device/huawei/angler/lineage.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/ariel/config/ariel_common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := ariel_angler
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6P

TARGET_VENDOR := huawei

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    PRIVATE_BUILD_DESC="angler-user 8.1.0 OPM7.181005.003 4984324 release-keys"

BUILD_FINGERPRINT := google/angler/angler:8.1.0/OPM7.181005.003/4984324:user/release-keys