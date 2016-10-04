# Inherit base AOSP device configuration
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit our APN list
$(call inherit-product, vendor/omni/config/gsm.mk)

# Override product naming for Omni
PRODUCT_NAME := omni_bullhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5X
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="google/bullhead/bullhead:8.1.0/OPM4.171019.016.A1/4720815:user/release-keys" \
    PRIVATE_BUILD_DESC="bullhead-user 8.1.0 OPM4.171019.016.A1 4720815 release-keys"

