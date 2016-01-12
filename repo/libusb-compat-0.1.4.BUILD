package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

EXTERNAL_HDRS = ["usb.h"]

ALL_HDRS = pkg_outs(
        exes = ["lsusb"],
        libs = ["libusb.so"],
        hdrs = EXTERNAL_HDRS,
        )

genrule(
    name = "mv_hdrs",
    srcs = ["libusb/usb.h"],
    outs = ["usb.h"],
    cmd = "cp -r $< $@",
)

cc_binary(
    linkshared = 1,
    name = "libusb.so",
    srcs = ALL_HDRS + [
            "libusb/core.c",
            "//external:libusb-so-latest",
            ],
    includes = [".", "libusb"],
    copts = ["-DHAVE_CONFIG_H"],
    deps = ["//external:libusb-hdr-latest"],
)

cc_binary(
    name = "lsusb",
    srcs = ALL_HDRS + ["examples/lsusb.c", "libusb.so"],
    includes = ["libusb"],
)
