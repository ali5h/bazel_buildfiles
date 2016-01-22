package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = ["usb.h"]

pkg_outs(
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

qnap_cc_library(
    name = "libusb.so",
    srcs = [
            "libusb/core.c",
            "//external:libusb-so-latest",
            ],
    includes = ["libusb"],
    deps = ["//external:libusb-hdr-latest"],
)

qnap_cc_binary(
    name = "lsusb",
    srcs = ["examples/lsusb.c", "libusb.so"],
    includes = ["libusb"],
)
