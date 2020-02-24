export ARCHS = arm64 arm64e
export TARGET = iphone:clang:12.2:12.2
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = OneTwoKey

OneTwoKey_FILES = Tweak.x
OneTwoKey_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"