################################################################################
#
# hello
#
################################################################################

# Download url:
# https://github.com/cirosantilli/hello-c/archive/83478a83715b1d4efafaecc2189f8ccdc4367cc4.tar.gz
#
# Downloaded filename locally:
# hello-c-83478a83715b1d4efafaecc2189f8ccdc4367cc4.tar.gz
#
# What appears under ./dl/:
# dl/hello-83478a83715b1d4efafaecc2189f8ccdc4367cc4.tar.gz

HELLO_VERSION = 83478a83715b1d4efafaecc2189f8ccdc4367cc4
# Defines the filename under ./dl/ Anything works apparently. The default is the sanest option.
#HELLO_SOURCE = bleble.tar.gz
# Buildroot automatically appends .tar.gz to that URL.
# This is just educational, you  should use the github URL helper instead.
HELLO_SITE = https://github.com/cirosantilli/hello-c/archive/$(HELLO_VERSION)

define HELLO_BUILD_CMDS
    $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define HELLO_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/hello $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
