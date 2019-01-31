LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

OPENCV_LIB_TYPE:=STATIC
OPENCV_INSTALL_MODULES:=on

#include /home/cobalt/Android/OpenCV-android-sdk/sdk/native/jni/OpenCV.mk
#include /Users/oms1226/_workspace/OpenCV-2.4.11-android-sdk/OpenCV-android-sdk/sdk/native/jni/OpenCV.mk
include /Users/oms1226/_workspace/OpenCV-3.4.5-android-sdk/OpenCV-android-sdk/sdk/native/jni/OpenCV.mk

LOCAL_MODULE    := ImageProcessing
LOCAL_SRC_FILES := ImageProcessing.cpp
LOCAL_LDLIBS +=  -llog -ldl -ljnigraphics
#LOCAL_C_INCLUDES := /Users/oms1226/_workspace/OpenCV-2.4.11-android-sdk/OpenCV-android-sdk/sdk/native/jni/include/
LOCAL_C_INCLUDES := /Users/oms1226/_workspace/OpenCV-3.4.5-android-sdk/OpenCV-android-sdk/sdk/native/jni/include/

#LOCAL_CFLAGS += -I/Users/oms1226/_workspace/OpenCV-android-sdk/sdk/native/jni/include
include $(BUILD_SHARED_LIBRARY)
