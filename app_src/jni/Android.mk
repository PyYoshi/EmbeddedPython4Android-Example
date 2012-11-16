LOCAL_PATH:= $(call my-dir)
subdir_makefiles := \
    $(LOCAL_PATH)/libcrypt/Android.mk \
    $(LOCAL_PATH)/sqlite3/Android.mk \
    $(LOCAL_PATH)/openssl/Android.mk \
    $(LOCAL_PATH)/load_python/Android.mk \
    $(LOCAL_PATH)/Python-arm/Android.mk

include $(subdir_makefiles)