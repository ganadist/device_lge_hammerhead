PRODUCT_PACKAGES += \
	Stk \
	TimeService \

#PRODUCT_PACKAGES += \
	mpcpusetd \

PRODUCT_PACKAGE_OVERLAYS := \
    device/lge/hammerhead/overlay-hammerhead

$(call inherit-product, vendor/google/product/gapps-stubs.mk)
$(call inherit-product, vendor/fake_nexus/product/fake_nexus.mk)
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

PRODUCT_PROPERTY_OVERRIDES += \
	keyguard.no_require_sim=true \

$(call inherit-product, vendor/google/product/facelock.mk)

PRODUCT_PROPERTY_OVERRIDES += \
	ro.build.expect.bootloader=HHZ20f \
	ro.build.expect.baseband=M8974A-2.0.50.2.29 \
	ro.product.first_api_level=19 \

PRODUCT_PROPERTY_OVERRIDES += \
	media.stagefright.legacyencoder=1 \
	media.stagefright.less-secure=1 \
	media.stagefright.extractremote=0 \
	media.stagefright.codecremote=0 \

PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi

PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5
PRODUCT_NAME := hammerhead

PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.product.name=$(PRODUCT_NAME) \
