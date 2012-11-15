LOCAL_PATH := $(call my-dir)

### Prebuilt libs
# python2.7
#include $(CLEAR_VARS)
#LOCAL_MODULE := python2.7
#LOCAL_SRC_FILES := ../python/lib/libpython2.7.so
#include $(PREBUILT_SHARED_LIBRARY)
# crypt
#include $(CLEAR_VARS)
#LOCAL_MODULE := crypt
#LOCAL_SRC_FILES := ../python/lib/libcrypt.so
#include $(PREBUILT_SHARED_LIBRARY)
# sqlite3
#include $(CLEAR_VARS)
#LOCAL_MODULE := sqlite3
#LOCAL_SRC_FILES := ../python/lib/libsqlite3.so
#include $(PREBUILT_SHARED_LIBRARY)
# ssl
#include $(CLEAR_VARS)
#LOCAL_MODULE := ssl
#LOCAL_SRC_FILES := ../python/lib/libssl.so
#include $(PREBUILT_SHARED_LIBRARY)

### Build jni lib
include $(CLEAR_VARS)
#APP_ABI := armeabi-v7a
LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include \
    $(LOCAL_PATH)/include/python2.7
LOCAL_SRC_FILES := LoadPython.c
LOCAL_PRELINK_MODULE := false
LOCAL_LDLIBS := -L$(LOCAL_PATH)/../python/lib/ -llog
#LOCAL_LDLIBS += -lpython2.7
LOCAL_MODULE := LoadPython
include $(BUILD_SHARED_LIBRARY)