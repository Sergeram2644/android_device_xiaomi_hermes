LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := power.$(TARGET_BOARD_PLATFORM)
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := power.c
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)