##############################################################
#
# ldd package
#
##############################################################

LDD_VERSION = f83ca2eef39ee8fabc8dac217543abf33188817f
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
#
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-joshheyse.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_MODULE_SUBDIRS=scull misc-modules

define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -d $(TARGET_DIR)/lib
	$(INSTALL) -m 0644 $(@D)/misc-modules/faulty.ko $(TARGET_DIR)/lib/
	$(INSTALL) -m 0644 $(@D)/misc-modules/hello.ko $(TARGET_DIR)/lib/
	$(INSTALL) -m 0644 $(@D)/scull/scull.ko $(TARGET_DIR)/lib/
endef
$(eval $(kernel-module))
$(eval $(generic-package))
