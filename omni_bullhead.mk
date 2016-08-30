# Inherit omni-specific board config
include device/lge/bullhead/BoardConfigOmni.mk

# Exclude Live Wallpapers
TARGET_EXCLUDE_LIVEWALLPAPERS := true

# Inherit base AOSP device configuration
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

# Inherit APNs list
$(call inherit-product, vendor/omni/config/apns.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Override product naming for Omni
PRODUCT_NAME := omni_bullhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5X
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="google/bullhead/bullhead:7.0/NRD90M/3085278:user/release-keys" \
    PRIVATE_BUILD_DESC="bullhead-user 7.0 NRD90M 3085278 release-keys"
