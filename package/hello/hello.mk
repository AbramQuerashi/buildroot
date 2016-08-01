################################################################################
#
# hello
#
################################################################################

# Doesn't work with git apparently.
HELLO_VERSION = branch2
HELLO_SITE = git://github.com/cirosantilli/hello-c.git
HELLO_EXTRA_DOWNLOADS = https://raw.githubusercontent.com/cirosantilli/test-git-web-interface/d17831ac176307e60ed2bb3f912397012651c6a8/other-cms.md

define HELLO_BUILD_CMDS
	cp '$(DL_DIR)/other-cms.md' '$(@D)'
    $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define HELLO_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/hello $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
