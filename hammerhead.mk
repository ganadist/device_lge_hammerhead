# override package for reduce system image
PRODUCT_PACKAGES := \
	BooksStub \
	CalendarGoogleStub \
	CloudPrintStub \
	DriveStub \
	EditorsDocsStub \
	EditorsSheetsStub \
	EditorsSlidesStub \
	FitStub \
	HangoutsStub \
	KeepStub \
	MapsStub \
	Music2Stub \
	NewsstandStub \
	NewsWeatherStub \
	PhotosStub \
	PlayGamesStub \
	PlusOneStub \
	TranslateStub \
	VideosStub \
	WebViewGoogleStub \
	YouTubeStub \

PRODUCT_PACKAGES += \
	PartnerBookmarksProvider \
	CellBroadcastReceiver \
	Stk \

PRODUCT_PACKAGES += \
	FakeNexusLayout \
	FakeNexusProvision \

#PRODUCT_PACKAGES += \
	mpcpusetd \

PRODUCT_PACKAGE_OVERLAYS := \
    device/lge/hammerhead/overlay-hammerhead

$(call inherit-product, vendor/fake_nexus/product/fake_nexus.mk)
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

PRODUCT_PROPERTY_OVERRIDES += \
	keyguard.no_require_sim=true \

$(call inherit-product, vendor/google/product/facelock.mk)

PRODUCT_PROPERTY_OVERRIDES += \
	ro.build.expect.bootloader=HHZ20f \
	ro.build.expect.baseband=M8974A-2.0.50.2.29 \
	ro.product.first_api_level=19 \

PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi

PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5
PRODUCT_NAME := hammerhead

PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.product.name=$(PRODUCT_NAME) \
