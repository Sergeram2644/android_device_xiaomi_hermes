$(call inherit-product, device/xiaomi/hermes/device.mk)
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_DEVICE := hermes
PRODUCT_NAME := lineage_hermes
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 2
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_RELEASE_NAME := xiaomi hermes
PRODUCT_RESTRICT_VENDOR_FILES := false

TARGET_SCREEN_HEIGHT      := 1920
TARGET_SCREEN_WIDTH       := 1080
TARGET_BOOTANIMATION_NAME := 1080

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Use the latest approved GMS identifiers unless running a signed build
#PRODUCT_BUILD_PROP_OVERRIDES += \
#    BUILD_FINGERPRINT=Xiaomi/hermes/hermes:5.0.2/LRX22G/V8.1.2.0.LHMMIDI:user/release-keys \
#    PRIVATE_BUILD_DESC="hermes-user 5.0.2 LRX22G V8.1.2.0.LHMMIDI release-keys"