################################################################################
#
# hello
#
################################################################################

HELLO_VERSION = 1.0
HELLO_SITE = ./package/hello/src
HELLO_SITE_METHOD = local
HELLO_DEPENDENCIES += eigen

define HELLO_BUILD_CMDS
    $(MAKE) -C $(@D) $(TARGET_CONFIGURE_OPTS)
endef

define HELLO_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/hello $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
