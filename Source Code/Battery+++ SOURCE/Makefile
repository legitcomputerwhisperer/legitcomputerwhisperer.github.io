ARCHS = armv7 arm64
TARGET = iphone:clang

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = batteryplus3
batteryplus3_FILES = Tweak.xm
batteryplus3_EXTRA_FRAMEWORKS += Cephei

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard”
SUBPROJECTS += batteryplus3
include $(THEOS_MAKE_PATH)/aggregate.mk
