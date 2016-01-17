LOCAL_PATH := $(call my-dir)

# htc_log

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    htc_log.c

LOCAL_MODULE := libshim_log
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

# libqc-opt

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
     icu53.c

LOCAL_SHARED_LIBRARIES := libicuuc libicui18n
LOCAL_MODULE := libshim_qcopt
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

# camera

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
     gui/SensorManager.cpp \
     ui/GraphicBuffer.cpp \
     ui/GraphicBufferAllocator.cpp \
     ui/GraphicBufferMapper.cpp \
     MemoryHeapPmem.cpp \
     MemoryBase.c \
     VectorImpl.c

LOCAL_SHARED_LIBRARIES := liblog libcutils libhardware libui libgui libbinder libutils libsync
LOCAL_MODULE := libshim_camera
LOCAL_C_INCLUDES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)