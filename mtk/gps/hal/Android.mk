LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_RELATIVE_PATH := hw
ifeq ($(MTK_K64_SUPPORT), yes)
LOCAL_CFLAGS:= -DHAVE_GPS_HARDWARE_64BIT
endif

ifneq ($(MTK_OPEN_PACKAGE), yes)
LOCAL_STATIC_LIBRARIES := libepos
LOCAL_CFLAGS:= -DEPO_SUPPORT
endif

ifeq ($(BOARD_USES_AOSP_GPS_HAL), true)
LOCAL_CFLAGS:= -DAOSP_GPS_HAL
endif

LOCAL_SHARED_LIBRARIES := \
	liblog \
	libcutils \
	libhardware \
	libcurl \
	libandroid_runtime \
	libnativehelper \
	libcrypto \
	libssl \
	libz

ifeq ($(MTK_TC1_FEATURE), yes)
LOCAL_CFLAGS:= -DGPS_AT_COMMAND
endif
LOCAL_SRC_FILES := gps_mtk_aosp.c

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/../../kernel-headers

LOCAL_MODULE := gps.mt6795
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)