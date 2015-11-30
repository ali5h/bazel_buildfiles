package(default_visibility = ["//visibility:public"])

load("/ext/extension", "deb_library")

SOS = glob(['usr/lib/**/*.so*'])
SOS = glob(['usr/lib/**/*.so*'])
HDRS = glob(['usr/include/**/*.h'])

# deb_library("thin-provisioning-tools-0.5.6", SOS, HDRS)
deb_library("libaio", SOS, HDRS)

