load("/ext/extension", "deb_library")

SOS = glob(['usr/lib/**/*.so*'])
SOS = glob(['usr/lib/**/*.so*'])
HDRS = glob(['usr/include/**/*.h'])

# deb_library("thin-provisioning-tools-0.5.6", SOS, HDRS)
deb_library("libaio-0.3.110", SOS, HDRS)

cc_binary(
    name = "thin-provisioning-tools-0.5.6",
)
