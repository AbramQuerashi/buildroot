################################################################################
#
# hello
#
################################################################################

HELLO_VERSION = branch2
HELLO_SITE = git://github.com/cirosantilli/hello-c.git

define HELLO_BUILD_CMDS
    $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define HELLO_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/hello $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
