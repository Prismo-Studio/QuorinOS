# Inherit everything from the LineageOS sdk phone target
$(call inherit-product, vendor/lineage/build/target/product/lineage_sdk_phone_x86_64.mk)

# Quorin product identity
PRODUCT_NAME := quorin_sdk_phone_x86_64
PRODUCT_MODEL := QuorinOS Android SDK built for x86_64

# Quorin theme overlays
PRODUCT_PACKAGES += \
    QuorinFrameworkOverlay
