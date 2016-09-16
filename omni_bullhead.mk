# Inherit omni-specific board config
include device/lge/bullhead/BoardConfigOmni.mk

# Exclude Live Wallpapers
TARGET_EXCLUDE_LIVEWALLPAPERS := true

# Inherit base AOSP device configuration
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

# Inherit APNs list
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Bootanimation
TARGET_BOOTANIMATION_SIZE := 1080x608

# Allow tethering without provisioning app
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true

# Camera
PRODUCT_PACKAGES := \
    camera.msm8992

# dex2oat
PRODUCT_PROPERTY_SET += \
    dalvik.vm.dex2oat-Xmx=1024m

# GPS
PRODUCT_PACKAGES := \
    libgps.utils \
    libloc_api_v02 \
    libloc_core \
    libloc_ds_api \
    libloc_eng \
    gps.msm8992 \

# SELinux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# TWRP
PRODUCT_COPY_FILES += \
    device/lge/bullhead/twrp.fstab:recovery/root/etc/twrp.fstab

# Override product naming for Omni
PRODUCT_NAME := omni_bullhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5X
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="google/bullhead/bullhead:7.0/NRD90S/3142244:user/release-keys" \
    PRIVATE_BUILD_DESC="bullhead-user 7.0 NRD90S 3142244 release-keys"
