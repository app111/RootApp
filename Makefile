THEOS_DEVICE_IP = 192.168.2.10
ARCHS = armv7 armv7s arm64
TARGET = iphone:latest:5.0

include theos/makefiles/common.mk

APPLICATION_NAME = RootApp
RootApp_FILES = main.m RootAppApplication.mm RootViewController.mm
RootApp_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk

after-stage::
	$(ECHO_NOTHING)chmod +s $(THEOS_STAGING_DIR)/Applications/RootApp.app/RootApp$(ECHO_END)
