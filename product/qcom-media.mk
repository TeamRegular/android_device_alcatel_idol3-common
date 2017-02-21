# Media
PRODUCT_PACKAGES += \
    libextmedia_jni \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

ifneq ($(QCPATH),)
PRODUCT_PACKAGES += \
    libOmxVdecHevc
endif

ifeq ($(TARGET_DEVICE_VARIANT),idol347)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs_msm8916.xml:system/etc/media_codecs.xml
else
ifeq ($(TARGET_DEVICE_VARIANT),idol355)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs_msm8939.xml:system/etc/media_codecs.xml
endif
endif

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=1 \
    vidc.enc.narrow.searchrange=1
