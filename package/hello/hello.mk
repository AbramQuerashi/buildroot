################################################################################
#
# hello
#
################################################################################

HELLO_VERSION = 83478a83715b1d4efafaecc2189f8ccdc4367cc4
HELLO_SITE = $(call github,cirosantilli,hello-c,$(HELLO_VERSION))

define HELLO_BUILD_CMDS
    $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define HELLO_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/hello $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
