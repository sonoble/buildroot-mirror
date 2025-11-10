#############################################################
#
# fakeroot - use system fakeroot instead of building
#
#############################################################
FAKEROOT_VERSION = 1.18.2
FAKEROOT_SOURCE =
FAKEROOT_SITE =
FAKEROOT_LICENSE = GPLv3+

# Override all build steps to do nothing and use system fakeroot
HOST_FAKEROOT_EXTRACT_CMDS = true
HOST_FAKEROOT_CONFIGURE_CMDS = true
HOST_FAKEROOT_BUILD_CMDS = true

define HOST_FAKEROOT_INSTALL_CMDS
	mkdir -p $(HOST_DIR)/usr/bin
	ln -sf /usr/bin/fakeroot $(HOST_DIR)/usr/bin/fakeroot || true
	ln -sf /usr/bin/faked $(HOST_DIR)/usr/bin/faked || true
endef

$(eval $(host-generic-package))
