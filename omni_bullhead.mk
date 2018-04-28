# Inherit omni-specific board config
include device/lge/bullhead/BoardConfigOmni.mk

# Inherit base AOSP device configuration
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit APNs from vendor
$(call inherit-product, vendor/omni/config/gsm.mk)

# Override product naming for Omni
PRODUCT_NAME := omni_bullhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5X
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="bullhead-user 8.1.0 OPM2.171019.029 4657601 release-keys"

BUILD_FINGERPRINT := "google/bullhead/bullhead:8.1.0/OPM2.171019.029/4657601:user/release-keys" \
