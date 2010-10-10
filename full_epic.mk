#
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)


PRODUCT_COPY_FILES += \
    device/samsung/epic/init.smdkc110.rc:root/init.smdkc110.rc



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
# mms support!
#
PRODUCT_COPY_FILES += \
    device/samsung/epic/apns-conf.xml:system/etc/apns-conf.xml

#
#PPP aka data on epic 4g cdma AKA SAMSUNG STYLE!
#
PRODUCT_COPY_FILES += \
    device/samsung/epic/prebuilt/ppp/pppd_runner:system/bin/pppd_runner \
    device/samsung/epic/prebuilt/ppp/pppd:system/bin/pppd \
    device/samsung/epic/prebuilt/ppp/init.cdma-pppd:system/etc/init.cdma-pppd \
    device/samsung/epic/prebuilt/ppp/init.gprs-pppd:system/etc/init.gprs-pppd \
    device/samsung/epic/prebuilt/ppp/chap-secrets:system/etc/ppp/chap-secrets \
    device/samsung/epic/prebuilt/ppp/ip-up:system/etc/ppp/ip-up \
    device/samsung/epic/prebuilt/ppp/ip-down:system/etc/ppp/ip-down \
    device/samsung/epic/prebuilt/ppp/ip-up-vpn:system/etc/ppp/ip-up-vpn \
    device/samsung/epic/prebuilt/ppp/pap-secrets:system/etc/ppp/pap-secrets \
    device/samsung/epic/prebuilt/ppp/options:system/etc/ppp/options

#
# Wifi
#
PRODUCT_COPY_FILES += \
    device/samsung/epic/prebuilt/wifi/bcm4329_aps.bin:system/etc/wifi/bcm4329_aps.bin \
    device/samsung/epic/prebuilt/wifi/bcm4329_mfg.bin:system/etc/wifi/bcm4329_mfg.bin \
    device/samsung/epic/prebuilt/wifi/bcm4329_sta.bin:system/etc/wifi/bcm4329_sta.bin 
  device/samsung/epic/prebuilt/wifi/libwlservice.so:system/lib/libwlservice.so \
    device/samsung/epic/prebuilt/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt \
    device/samsung/epic/prebuilt/wifi/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt \
  device/samsung/epic/prebuilt/wifi/wifi.conf:system/etc/wifi.conf \
   device/samsung/epic/prebuilt/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
   device/samsung/epic/prebuilt/wifi/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
   device/samsung/epic/prebuilt/wifi/wlservice:system/bin/wlservice \
   device/samsung/epic/prebuilt/wifi/wpa_supplicant:system/bin/wpa_supplicant



#
# Display (3D & 2D)
#
PRODUCT_COPY_FILES += \
    device/samsung/epic/prebuilt/egl/egl.cfg:system/lib/egl/egl.cfg \
    device/samsung/epic/prebuilt/egl/libEGL_POWERVR_SGX540_120.so:system/lib/egl/libEGL_POWERVR_SGX540_120.so \
    device/samsung/epic/prebuilt/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
    device/samsung/epic/prebuilt/egl/libGLESv1_CM_POWERVR_SGX540_120.so:system/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \
    device/samsung/epic/prebuilt/egl/libGLESv2_POWERVR_SGX540_120.so:system/lib/egl/libGLESv2_POWERVR_SGX540_120.so \
    device/samsung/epic/prebuilt/egl/libIMGegl.so:system/lib/libIMGegl.so \
    device/samsung/epic/prebuilt/egl/libpvr2d.so:system/lib/libpvr2d.so \
    device/samsung/epic/prebuilt/egl/libsrv_init.so:system/lib/libsrv_init.so \
    device/samsung/epic/prebuilt/egl/libsrv_um.so:system/lib/libsrv_um.so \
    device/samsung/epic/prebuilt/egl/libPVRScopeServices.so:system/lib/libPVRScopeServices.so \
    device/samsung/epic/prebuilt/egl/libglslcompiler.so:system/lib/libglslcompiler.so \
    device/samsung/epic/prebuilt/egl/libpvrANDROID_WSEGL.so:system/lib/libpvrANDROID_WSEGL.so \
    device/samsung/epic/prebuilt/egl/pvrsrvinit:system/bin/pvrsrvinit
#
# Sensors, Lights etc
#
PRODUCT_COPY_FILES += \
    device/samsung/epic/prebuilt/hw/copybit.s5pc110.so:system/lib/hw/copybit.s5pc110.so \
    device/samsung/epic/prebuilt/hw/lights.default.so:system/lib/hw/lights.default.so \
    device/samsung/epic/prebuilt/hw/dbus.conf:system/etc/dbus.conf \
	device/samsung/epic/prebuilt/hw/dbus-daemon:system/bin/dbus-daemon \
	device/samsung/epic/prebuilt/hw/libdbus.so:system/bin/libdbus.so \
	device/samsung/epic/prebuilt/hw/gralloc.s5pc110.so:system/lib/hw/gralloc.s5pc110.so
##  device/samsung/epic/prebuilt/hw/sensors.SPH-D700.so:system/lib/hw/sensors.SPH-D700.so \
#
# gps daemon, libs
#
PRODUCT_COPY_FILES += \
    device/samsung/epic/prebuilt/gps/gpsd/8c7fccef.0:system/bin/gpsd/8c7fccef.0 \
	device/samsung/epic/prebuilt/gps/gpsd/66ca3eb6.0:system/bin/gpsd/66ca3eb6.0 \
	device/samsung/epic/prebuilt/gps/gpsd/803ca020.0:system/bin/gpsd//803ca020.0 \
	device/samsung/epic/prebuilt/gps/gpsd/7651b327.0:system/bin/gpsd/7651b327.0 \
	device/samsung/epic/prebuilt/gps/gpsd/c9dbfc2e.0:system/bin/gpsd/c9dbfc2e.0 \
	device/samsung/epic/prebuilt/gps/gpsd/ddc328ff.0:system/bin/gpsd/ddc328ff.0 \
	device/samsung/epic/prebuilt/gps/gpsd/ed62f4e3.0:system/bin/gpsd/ed62f4e3.0 \
	device/samsung/epic/prebuilt/gps/gpsd/f0b6e66f.0:system/bin/gpsd/f0b6e66f.0 \
	device/samsung/epic/prebuilt/gps/gpsd/glgps_samsungJupiter:system/bin/gpsd/glgps_samsungJupiter \
	device/samsung/epic/prebuilt/gps/libgps.so:system/lib/libgps.so \
	device/samsung/epic/prebuilt/gps/libsecgps.so:system/lib/libsecgps.so \
	device/samsung/epic/prebuilt/gps/jupiter.xml:system/etc/jupiter.xml

#
# WIMAX FOR VICTORY!
#
PRODUCT_COPY_FILES += \
	device/samsung/epic/prebuilt/wimax/libSECmWiMAXcAPI.so:system/lib/libSECmWiMAXcAPI.so \
	device/samsung/epic/prebuilt/wimax/libWiMAXLineTest.so:system/lib/libWiMAXLineTest.so \
	device/samsung/epic/prebuilt/wimax/libWiMAXNative.so:system/lib/libWiMAXNative.so \
	device/samsung/epic/prebuilt/wimax/libWiMAXNativeODB.so:system/lib/libWiMAXNativeODB.so \
	device/samsung/epic/prebuilt/wimax/libwimaxne.so:system/lib/libwimaxne.so \
	device/samsung/epic/prebuilt/wimax/libwimaxwtm.so:system/lib/libwimaxwtm.so \
	device/samsung/epic/prebuilt/wimax/wimax_boot.bin:system/etc/wimax_boot.bin \
	device/samsung/epic/prebuilt/wimax/wimaxfw.bin:system/etc/wimaxfw.bin \
	device/samsung/epic/prebuilt/wimax/wimaxloader.bin:system/etc/wimaxloader.bin \

#
# sensor daemon and libs
#
#PRODUCT_COPY_FILES += \
#	device/samsung/epic/prebuilt/sensor/libsensor_yamaha.so:system/lib/libsensor_yamaha.so \
#	device/samsung/epic/prebuilt/sensor/libsensor_yamaha_test.so:system/lib/libsensor_yamaha_test.so \
#	device/samsung/epic/prebuilt/sensor/libms3c_yamaha.so:system/lib/libms3c_yamaha.so \
#	device/samsung/epic/prebuilt/sensor/sensorserver_yamaha:system/bin/sensorserver_yamaha \
#	device/samsung/epic/prebuilt/sensor/sensorcalibutil_yamaha:system/bin/sensorcalibutil_yamaha \
#	device/samsung/epic/prebuilt/sensor/sensorstatutil_yamaha:system/bin/sensorstatutil_yamaha

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
    device/samsung/epic/prebuilt/ril/libreference-ril.so:system/lib/libreference-ril.so \
    device/samsung/epic/prebuilt/ril/rilclient-test:system/bin/rilclient-test \
	device/samsung/epic/prebuilt/ril/rild:system/bin/rild
	

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
    device/samsung/epic/prebuilt/omx/libswmv8domxoc.so:system/lib/libswmv8domxoc.so 

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

$(call inherit-product, build/target/product/full.mk)
PRODUCT_NAME := full_epic
PRODUCT_DEVICE := epic
PRODUCT_MODEL := SPH-D700
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
