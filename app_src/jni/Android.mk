LOCAL_PATH := $(call my-dir)
 
include $(CLEAR_VARS)

LOCAL_PRELINK_MODULE := false
LOCAL_LDLIBS    := -llog
 
LOCAL_MODULE    := LoadPython
LOCAL_SRC_FILES := LoadPython.c
 
include $(BUILD_SHARED_LIBRARY)