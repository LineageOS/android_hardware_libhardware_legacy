# Copyright 2006 The Android Open Source Project

LOCAL_SRC_FILES += power/power.c

ifeq ($(TARGET_SOC),exynos4x12)
  LOCAL_FLAGS += -DUSE_DVFS_STUB
endif

ifeq ($(QEMU_HARDWARE),true)
  LOCAL_SRC_FILES += power/power_qemu.c
  LOCAL_CFLAGS    += -DQEMU_POWER=1
endif
