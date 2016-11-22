# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit AOSP Rhine device parts
$(call inherit-product, device/sony/scorpion_windy/aosp_sgp611.mk)

# Inherit CM Rhine device parts
$(call inherit-product, device/sony/shinano/platform2.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Fingerprint for honami (from stock)
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGP611
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/SGP611/SGP611:6.0.1/23.5.A.1.291/3706784398:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="SGP611-user 6.0.1 23.5.A.1.291 3706784398 release-keys"

# Override Product Name for crDroid
PRODUCT_NAME := cm_scorpion-windy
PRODUCT_MODEL := Xperia Z3 Tablet Compact
