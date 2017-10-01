# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, device/samsung/j2lte/full_j2lte.mk)

PRODUCT_NAME := lineage_j2lte
