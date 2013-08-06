# Copyright 2006 The Android Open Source Project

ifeq ($(EXYNOS4X12_ENHANCEMENT),true)
LOCAL_CFLAGS += -DSAMSUNG_DVFS
endif

LOCAL_SRC_FILES += power/power.c
