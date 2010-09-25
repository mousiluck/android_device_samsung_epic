#
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := Samsung Epic 4G
PRODUCT_DEVICE := epic
PRODUCT_MODEL := SPH-D700
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)


PRODUCT_COPY_FILES += \
    device/samsung/epic/init.smdkc110.rc:root/init.smdkc110.rc

PRODUCT_POLICY := android.policy_phone


PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    rild.libpath=/system/lib/libsec-ril40.so \
    rild.libargs=-d /dev/ttyS0 \
    wifi.interface=eth0 \
    wifi.supplicant_scan_interval=15



# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

#
# Copy epic specific prebuilt files
#

#
# Wifi
#
PRODUCT_COPY_FILES += \
    device/samsung/epic/prebuilt/wifi/libwlservice.so:system/lib/libwlservice.so \
    device/samsung/epic/prebuilt/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt \
    device/samsung/epic/prebuilt/wifi/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt \
    device/samsung/epic/prebuilt/wifi/bcm4329_aps.bin:system/etc/wifi/bcm4329_aps.bin \
    device/samsung/epic/prebuilt/wifi/bcm4329_mfg.bin:system/etc/wifi/bcm4329_mfg.bin \
    device/samsung/epic/prebuilt/wifi/bcm4329_sta.bin:system/etc/wifi/bcm4329_sta.bin \
    device/samsung/epic/prebuilt/wifi/wifi.conf:system/etc/wifi/wifi.conf \
    device/samsung/epic/prebuilt/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/samsung/epic/prebuilt/wifi/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/samsung/epic/prebuilt/wifi/wlservice:system/bin/wlservice \
    device/samsung/epic/prebuilt/wifi/wpa_supplicant:system/bin/wpa_supplicant



#
# Display (3D)
#
PRODUCT_COPY_FILES += \
    device/samsung/epic/prebuilt/egl/egl.cfg:system/lib/egl/egl.cfg \
    device/samsung/epic/prebuilt/egl/libEGL_POWERVR_SGX540_120.so:system/lib/egl/libEGL_POWERVR_SGX540_120.so \
    device/samsung/epic/prebuilt/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
    device/samsung/epic/prebuilt/egl/libGLESv1_CM_POWERVR_SGX540_120.so:system/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \
    device/samsung/epic/prebuilt/egl/libGLESv2_POWERVR_SGX540_120.so:system/lib/egl/libGLESv2_POWERVR_SGX540_120.so

#
# Sensors, Lights etc
#
PRODUCT_COPY_FILES += \
    device/samsung/epic/prebuilt/hw/copybit.s5pc110.so:system/lib/hw/copybit.s5pc110.so \
    device/samsung/epic/prebuilt/hw/lights.default.so:system/lib/hw/lights.default.so \
    device/samsung/epic/prebuilt/hw/sensors.SPH-D700.so:system/lib/hw/sensors.SPH-D700.so \
    device/samsung/epic/prebuilt/hw/gralloc.s5pc110.so:system/lib/hw/gralloc.s5pc110.so

#
# Keys
#
PRODUCT_COPY_FILES += \
    device/samsung/epic/prebuilt/keylayout/s3c-keypad.kl:system/usr/keylayout/s3c-keypad.kl \
    device/samsung/epic/prebuilt/keylayout/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
    device/samsung/epic/prebuilt/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/samsung/epic/prebuilt/keylayout/melfas-touchkey.kl:system/usr/keylayout/melfas-touchkey.kl \
    device/samsung/epic/prebuilt/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/samsung/epic/prebuilt/keychars/s3c-keypad.kcm.bin:system/usr/keychars/s3c-keypad.kcm.bin \
    device/samsung/epic/prebuilt/keychars/sec_jack.kcm.bin:system/usr/keychars/sec_jack.kcm.bin \
    device/samsung/epic/prebuilt/keychars/melfas-touchkey.kcm.bin:system/usr/keychars/melfas-touchkey.kcm.bin \
    device/samsung/epic/prebuilt/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/samsung/epic/prebuilt/keychars/s3c-keypad-rev0050.kcm.bin:system/usr/keychars/s3c-keypad-rev0050.kcm.bin \
    device/samsung/epic/prebuilt/keychars/s3c-keypad-rev0040.kcm.bin:system/usr/keychars/s3c-keypad-rev0040.kcm.bin \
	device/samsung/epic/prebuilt/keychars/s3c-keypad-rev0030.kcm.bin:system/usr/keychars/s3c-keypad-rev0030.kcm.bin \
	device/samsung/epic/prebuilt/keychars/s3c-keypad-rev0000.kcm.bin:system/usr/keychars/s3c-keypad-rev0000.kcm.bin \
	device/samsung/epic/prebuilt/keychars/melfas_ts_input.kcm.bin:system/usr/keychars/melfas_ts_input.kcm.bin \
	device/samsung/epic/prebuilt/keychars/optjoy_device.kcm.bin:system/usr/keychars/optjoy_device.kcm.bin \
    device/samsung/epic/prebuilt/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin  


#
# Vold
#
PRODUCT_COPY_FILES += \
    device/samsung/epic/prebuilt/vold.fstab:system/etc/vold.fstab 

#
# Camera
#
PRODUCT_COPY_FILES += \
    device/samsung/epic/prebuilt/camera/libarccamera.so:system/lib/libarccamera.so \
    device/samsung/epic/prebuilt/camera/libcamerafirmwarejni.so:system/lib/libcamerafirmwarejni.so \
    device/samsung/epic/prebuilt/camera/libcamera.so:system/lib/libcamera.so \
    device/samsung/epic/prebuilt/camera/libseccameraadaptor.so:system/lib/libseccameraadaptor.so \
    device/samsung/epic/prebuilt/camera/libseccamera.so:system/lib/libseccamera.so

#
# RIL
#
PRODUCT_COPY_FILES += \
    device/samsung/epic/prebuilt/ril/libril.so:system/lib/libril.so \
    device/samsung/epic/prebuilt/ril/libsec-ril40.so:system/lib/libsec-ril40.so \
    device/samsung/epic/prebuilt/ril/libsecril-client.so:system/lib/libsecril-client.so \
    device/samsung/epic/prebuilt/ril/drexe:system/bin/drexe \
    device/samsung/epic/prebuilt/ril/libsec-ril40.so:system/lib/librefence.so \
    device/samsung/epic/prebuilt/ril/rilclient-test:system/bin/rilclient-test
	

#
# OMX
#
PRODUCT_COPY_FILES += \
    device/samsung/epic/prebuilt/omx/libs263domxoc.so:system/lib/libs263domxoc.so \
    device/samsung/epic/prebuilt/omx/libs263eomxoc.so:system/lib/libs263eomxoc.so \
    device/samsung/epic/prebuilt/omx/libs264domxoc.so:system/lib/libs264domxoc.so \
    device/samsung/epic/prebuilt/omx/libs264eomxoc.so:system/lib/libs264eomxoc.so \
    device/samsung/epic/prebuilt/omx/libsaacdomxoc.so:system/lib/libsaacdomxoc.so \
    device/samsung/epic/prebuilt/omx/libsaaceomxoc.so:system/lib/libsaaceomxoc.so \
    device/samsung/epic/prebuilt/omx/libsac3domxoc.so:system/lib/libsac3domxoc.so \
    device/samsung/epic/prebuilt/omx/libsamrdomxoc.so:system/lib/libsamrdomxoc.so \
    device/samsung/epic/prebuilt/omx/libsamreomxoc.so:system/lib/libsamreomxoc.so \
    device/samsung/epic/prebuilt/omx/libsdiv3domxoc.so:system/lib/libsdiv3domxoc.so \
    device/samsung/epic/prebuilt/omx/libsflacdomxoc.so:system/lib/libsflacdomxoc.so \
    device/samsung/epic/prebuilt/omx/libsmp3domxoc.so:system/lib/libsmp3domxoc.so \
    device/samsung/epic/prebuilt/omx/libsmp4fmocn.so:system/lib/libsmp4fmocn.so \
    device/samsung/epic/prebuilt/omx/libsmp4vdomxoc.so:system/lib/libsmp4vdomxoc.so \
    device/samsung/epic/prebuilt/omx/libsmp4veomxoc.so:system/lib/libsmp4veomxoc.so \
    device/samsung/epic/prebuilt/omx/libsvc1domxoc.so:system/lib/libsvc1domxoc.so \
    device/samsung/epic/prebuilt/omx/libswmadomxoc.so:system/lib/libswmadomxoc.so \
    device/samsung/epic/prebuilt/omx/libswmv7domxoc.so:system/lib/libswmv7domxoc.so \
    device/samsung/epic/prebuilt/omx/libswmv8domxoc.so:system/lib/libswmv8domxoc.so \

# libspeech
PRODUCT_COPY_FILES += device/samsung/epic/prebuilt/audio/libspeech.so:system/lib/libspeech.so

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/samsung/epic/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise
PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.clientidbase=android-sprint-us \
	ro.cdma.home.operator.numeric=310120 \
	ro.cdma.home.operator.alpha=Sprint \
    dalvik.vm.startheapsize=8m \
    dalvik.vm.heapsize=48m

# epic uses high-density artwork where available
PRODUCT_LOCALES := hdpi



