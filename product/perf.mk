# Properties
ifeq ($(TARGET_DEVICE_VARIANT),idol355)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.fw.dex2oat_thread_count=4
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.am.reschedule_service=true \
    ro.config.max_starting_bg=8 \
    ro.sys.fw.use_trim_settings=true
