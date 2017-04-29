LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := GmsCore
LOCAL_SRC_FILES := com.google.android.gms-9258259.apk
LOCAL_REQUIRED_MODULES := libvtm-jni libvtm-android
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

# FIXME
# TARGET_ARCH_ABI should be used, but it is not defined...
ifeq "$(TARGET_ARCH)" "arm"
  ifeq ($(findstring armv5te,$(TARGET_ARCH_VARIANT)),armv5te)
    arch := armeabi
  else ifeq ($(findstring armv7-a,$(TARGET_ARCH_VARIANT)),armv7-a)
    arch := armeabi-v7a
  else
    arch := unknown
  endif
else ifeq "$(TARGET_ARCH)" "arm64"
  arch := arm64-v8a
else ifeq "$(TARGET_ARCH)" "x86"
  arch := x86
else
  arch := unknown
endif

include $(CLEAR_VARS)
LOCAL_MODULE := libvtm-jni
LOCAL_SRC_FILES := lib/$(arch)/libvtm-jni.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libvtm-android
LOCAL_SRC_FILES := lib/$(arch)/libvtm-android.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_PREBUILT)

