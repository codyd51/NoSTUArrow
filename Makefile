ARCHS = armv7 armv7s arm64
include theos/makefiles/common.mk

TWEAK_NAME = NoSTUArrow
NoSTUArrow_FILES = Tweak.xm
NoSTUArrow_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
