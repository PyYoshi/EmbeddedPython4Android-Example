LOCAL_PATH:= $(call my-dir)
subdir_makefiles := \
    $(LOCAL_PATH)/libcrypt/Android.mk \
    $(LOCAL_PATH)/sqlite3/Android.mk \
    $(LOCAL_PATH)/openssl/Android.mk \
    $(LOCAL_PATH)/Python-arm/Android.mk \
    $(LOCAL_PATH)/load_python/Android.mk \
    $(LOCAL_PATH)/bzip2/Android.mk \
    $(LOCAL_PATH)/libffi_android/Android.mk \
    $(LOCAL_PATH)/expat_android/Android.mk

include $(subdir_makefiles)