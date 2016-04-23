# Copyright (C) 2013 The CyanogenMod Project
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

# inherit from the common pollux definitions
include device/sony/pollux-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/sony/pollux_windy/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := SGP311,SGP312,pollux_windy

TARGET_KERNEL_CONFIG := fusion3_pollux_windy_defconfig

# Optimizations
CLANG_O3 := true
STRICT_ALIASING := true
KRAIT_TUNINGS := true
GRAPHITE_OPTS := true
ENABLE_GCCONLY := true
ENABLE_SANITIZE := true

# TWRP tab flags
TW_THEME := landscape_hdpi
TW_BRIGHTNESS_PATH := /sys/devices/i2c-0/0-0036/leds/lm3533-lcd-bl/brightness
