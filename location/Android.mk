ifeq ($(TARGET_HAS_QCOM_HEADERS),true)
LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles)
endif
