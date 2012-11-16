LOCAL_PATH := $(call my-dir)

### Build jni lib
include $(CLEAR_VARS)
#APP_ABI := armeabi-v7a
LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/../include
LOCAL_SRC_FILES := LoadPython.c
LOCAL_PRELINK_MODULE := false
LOCAL_LDLIBS := -llog
LOCAL_WHOLE_STATIC_LIBRARIES := libpython2.7
LOCAL_CPPFLAGS := -Wall
LOCAL_MODULE := LoadPython
include $(BUILD_SHARED_LIBRARY)