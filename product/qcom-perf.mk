# IRQ balance
ifeq ($(TARGET_DEVICE_VARIANT),idol355)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf
endif

# Power HAL
PRODUCT_PACKAGES += \
    power.msm8916

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so

ifeq ($(TARGET_DEVICE_VARIANT),idol347)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.min_freq_0=800000
else
ifeq ($(TARGET_DEVICE_VARIANT),idol355)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.min_freq_0=960000 \
    ro.min_freq_4=800000
endif
endif
