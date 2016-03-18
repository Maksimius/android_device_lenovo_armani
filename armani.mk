#
# Copyright 2014 The Android Open Source Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The GPS configuration appropriate for this device.
#$(call inherit-product, device/common/gps/gps_eu_supl.mk)

DEVICE_PACKAGE_OVERLAYS += device/lenovo/armani/overlay

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_TAGS += dalvik.gc.type-precise

# Custom APK
PRODUCT_PACKAGES += JSR_Settings

# ViewMem 
PRODUCT_PACKAGES += viewmem

# Ramdisk
PRODUCT_PACKAGES += fstab.armani
PRODUCT_PACKAGES += fstab.emmc
PRODUCT_PACKAGES += fstab.extsd
PRODUCT_PACKAGES += fstab.zram_64
PRODUCT_PACKAGES += fstab.zram_128
PRODUCT_PACKAGES += fstab.zram_256
PRODUCT_PACKAGES += fstab.zram_512
PRODUCT_PACKAGES += init.qcom.rc
PRODUCT_PACKAGES += init.qcom.usb.rc
PRODUCT_PACKAGES += init.target.rc
PRODUCT_PACKAGES += ueventd.qcom.rc
PRODUCT_PACKAGES += init.qcom.ril.sh

# Rootdir
PRODUCT_PACKAGES += device/lenovo/armani/rootdir/fstab.armani:root/fstab.armani
PRODUCT_PACKAGES += device/lenovo/armani/rootdir/fstab.emmc:root/fstab.emmc
PRODUCT_PACKAGES += device/lenovo/armani/rootdir/fstab.extsd:root/fstab.extsd
PRODUCT_PACKAGES += device/lenovo/armani/rootdir/fstab.zram_64:root/fstab.zram_64
PRODUCT_PACKAGES += device/lenovo/armani/rootdir/fstab.zram_128:root/fstab.zram_128
PRODUCT_PACKAGES += device/lenovo/armani/rootdir/fstab.zram_256:root/fstab.zram_256
PRODUCT_PACKAGES += device/lenovo/armani/rootdir/fstab.zram_512:root/fstab.zram_512
PRODUCT_PACKAGES += device/lenovo/armani/rootdir/init.qcom.rc:root/init.qcom.rc
PRODUCT_PACKAGES += device/lenovo/armani/rootdir/init.qcom.usb.rc:root/init.qcom.usb.rc
PRODUCT_PACKAGES += device/lenovo/armani/rootdir/init.target.rc:root/init.target.rc
PRODUCT_PACKAGES += device/lenovo/armani/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc
PRODUCT_PACKAGES += device/lenovo/armani/rootdir/init.qcom.ril.sh:root/init.qcom.ril.sh

# Charger
PRODUCT_PACKAGES += charger
PRODUCT_PACKAGES += charger_res_images

# FM
PRODUCT_PACKAGES += FM2
PRODUCT_PACKAGES += FMRecord
PRODUCT_PACKAGES += libqcomfm_jni
PRODUCT_PACKAGES += qcom.fmradio

# Torch
PRODUCT_PACKAGES += Torch

# Packages
PRODUCT_PACKAGES += audio.a2dp.default
PRODUCT_PACKAGES += audio.primary.msm7x27a
PRODUCT_PACKAGES += audio.usb.default
PRODUCT_PACKAGES += audio_policy.msm7x27a
PRODUCT_PACKAGES += libaudioutils

PRODUCT_PACKAGES += libgenlock
PRODUCT_PACKAGES += copybit.msm7x27a
PRODUCT_PACKAGES += gralloc.msm7x27a
PRODUCT_PACKAGES += libqdMetaData
PRODUCT_PACKAGES += memtrack.msm7x27a
PRODUCT_PACKAGES += hwcomposer.msm7x27a
PRODUCT_PACKAGES += libtilerenderer

PRODUCT_PACKAGES += librs_jni
PRODUCT_PACKAGES += LiveWallpapers
PRODUCT_PACKAGES += LiveWallpapersPicker
PRODUCT_PACKAGES += VisualizationWallpapers

PRODUCT_PACKAGES += libmm-omxcore
PRODUCT_PACKAGES += libOmxCore
PRODUCT_PACKAGES += libstagefrighthw

PRODUCT_PACKAGES += gps.msm7x27a
PRODUCT_PACKAGES += camera.msm7x27a 
PRODUCT_PACKAGES += lights.msm7x27a

PRODUCT_PACKAGES += power.msm7x27a
PRODUCT_PACKAGES += power.qcom

PRODUCT_PACKAGES += com.android.future.usb.accessory
PRODUCT_PACKAGES += hwmac
PRODUCT_PACKAGES += make_ext4fs
PRODUCT_PACKAGES += setup_fs

# WebKit
#PRODUCT_PACKAGES += libwebcore

# wifi
PRODUCT_PACKAGES += libwpa_client
PRODUCT_PACKAGES += hostapd
PRODUCT_PACKAGES += dhcpcd.conf
PRODUCT_PACKAGES += wpa_supplicant
PRODUCT_PACKAGES += wpa_supplicant.conf


# Files
PRODUCT_COPY_FILES += device/lenovo/armani/configs/qosmgr_rules.xml:system/etc/qosmgr_rules.xml

PRODUCT_COPY_FILES += device/lenovo/armani/configs/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf
PRODUCT_COPY_FILES += device/lenovo/armani/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf
PRODUCT_COPY_FILES += device/lenovo/armani/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf
PRODUCT_COPY_FILES += device/lenovo/armani/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

#PRODUCT_COPY_FILES += frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml
#PRODUCT_COPY_FILES += frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml
#PRODUCT_COPY_FILES += frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml

PRODUCT_COPY_FILES += device/lenovo/armani/configs/audio_policy.conf:system/etc/audio_policy.conf
PRODUCT_COPY_FILES += device/lenovo/armani/configs/media_codecs.xml:system/etc/media_codecs.xml
PRODUCT_COPY_FILES += device/lenovo/armani/configs/media_profiles.xml:system/etc/media_profiles.xml

# ETC
PRODUCT_COPY_FILES += device/lenovo/armani/configs/AudioFilter.csv:system/etc/AudioFilter.csv
PRODUCT_COPY_FILES += device/lenovo/armani/configs/init.qcom.fm.sh:system/etc/init.qcom.fm.sh
PRODUCT_COPY_FILES += device/lenovo/armani/configs/thermald.conf:system/etc/thermald.conf
PRODUCT_COPY_FILES += device/lenovo/armani/configs/gps.conf:system/etc/gps.conf

# Keychars
PRODUCT_COPY_FILES += device/lenovo/armani/keychars/7x27a_kp.kcm:system/usr/keychars/7x27a_kp.kcm

# Keylayout
PRODUCT_COPY_FILES += device/lenovo/armani/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl
PRODUCT_COPY_FILES += device/lenovo/armani/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl
PRODUCT_COPY_FILES += device/lenovo/armani/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl
PRODUCT_COPY_FILES += device/lenovo/armani/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl
PRODUCT_COPY_FILES += device/lenovo/armani/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl
PRODUCT_COPY_FILES += device/lenovo/armani/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl
#PRODUCT_COPY_FILES += device/lenovo/armani/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl
#PRODUCT_COPY_FILES += device/lenovo/armani/keylayout/Generic.kl:system/usr/keylayout/Generic.kl

# Permissions
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml
#PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml
#PRODUCT_PACKAGES += frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml
#PRODUCT_PACKAGES += frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml

# Override bootanimation
# PRODUCT_COPY_FILES += device/lenovo/armani/bootanimation/cm10.zip:system/media/bootanimation.zip

#$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product, vendor/lenovo/armani/common-vendor.mk)
$(call inherit-product, vendor/lenovo/armani/armani-vendor.mk)
