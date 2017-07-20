LOCAL_PATH:= $(call my-dir)

ifeq ($(BOARD_MEDIATEK_USES_GPS),true)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_OVERRIDES_PACKAGES := Screencast

LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_PACKAGE_NAME := MtkGPS
LOCAL_CERTIFICATE := platform
LOCAL_PROGUARD_ENABLED := disabled

include $(BUILD_PACKAGE)

endif