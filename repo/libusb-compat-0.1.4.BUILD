package(default_visibility = ["//visibility:public"])

pkg_libs([":usb"])
pkg_exes([":lsusb"])

cc_library(
    name = "usb",
    srcs = ["libusb/core.c", "libusb/usbi.h", "config.h"],
    hdrs = ["libusb/usb.h"],
    includes = [".", "libusb"],
    copts = ["-DHAVE_CONFIG_H"],
    deps = ["//external:libusb-latest"],
)

cc_binary(
    name = "lsusb",
    srcs = ["examples/lsusb.c"],
    deps = [":usb"],
)
