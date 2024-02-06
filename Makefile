TARGET := iphone:clang:latest:16.1
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = pinBeGone

# orionTesting_FILES = $(shell find Sources/orionTesting -name '*.swift') $(shell find Sources/orionTestingC -name '*.m' -o -name '*.c' -o -name '*.mm' -o -name '*.cpp')
# orionTesting_SWIFTFLAGS = -ISources/orionTestingC/include
# orionTesting_CFLAGS = -fobjc-arc -ISources/orionTestingC/include

$(TWEAK_NAME)_FILES = $(shell find Sources/$(TWEAK_NAME) -name '*.swift') $(shell find Sources/$(TWEAK_NAME)C -name '*.m' -o -name '*.c' -o -name '*.mm' -o -name '*.cpp')
$(TWEAK_NAME)_SWIFTFLAGS = -ISources/$(TWEAK_NAME)C/include
$(TWEAK_NAME)_CFLAGS = -fobjc-arc -ISources/$(TWEAK_NAME)C/include

include $(THEOS_MAKE_PATH)/tweak.mk
