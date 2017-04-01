include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = batteryplus3
batteryplus3_FILES = VOLTRootListController.m
batteryplus3_INSTALL_PATH = /Library/PreferenceBundles
batteryplus3_FRAMEWORKS = UIKit
batteryplus3_PRIVATE_FRAMEWORKS = Preferences
batteryplus3_EXTRA_FRAMEWORKS = CepheiPrefs

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/batteryplus3.plist$(ECHO_END)
