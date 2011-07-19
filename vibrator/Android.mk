# Copyright 2006 The Android Open Source Project

LOCAL_SRC_FILES += vibrator/vibrator.c

## Must point to a source file that implements the sendit() function
ifneq ($(BOARD_HAS_VIBRATOR_IMPLEMENTATION),)
    LOCAL_SRC_FILES += $(BOARD_HAS_VIBRATOR_IMPLEMENTATION)
    LOCAL_CFLAGS += -DUSE_ALTERNATIVE_VIBRATOR
endif

ifneq ($(TARGET_USE_CUSTOM_VIBRATOR_FILE_PATH),)
LOCAL_CFLAGS += -DTHE_DEVICE=\"$(TARGET_USE_CUSTOM_VIBRATOR_FILE_PATH)\"
endif
