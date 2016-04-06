## Specify phone tech before including full_phone
$(call inherit-product, vendor/aicp/configs/gsm.mk)
DEVICE_RESOLUTION := 720x1280

# Release name
PRODUCT_RELEASE_NAME := a600cg
MAKE_CHANGELOG := true

# Inherit some common CM stuff.
$(call inherit-product, vendor/aicp/configs/common.mk)

PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit device configsuration change remove aosp full
$(call inherit-product, device/asus/a600cg/full_a600cg.mk)

PRODUCT_BRAND := Asus
TARGET_VENDOR := Asus
TARGET_VENDOR_PRODUCT_NAME := aicp_a600cg
TARGET_VENDOR_DEVICE_NAME := ASUS_T00G
# update things
PRODUCT_NAME := aicp_a600cg
PRODUCT_DEVICE := a600cg
PRODUCT_MANUFACTURER := Asus
PRODUCT_MODEL := ASUS_T00G

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
-include vendor/aicp/configs/bootanimation.mk
