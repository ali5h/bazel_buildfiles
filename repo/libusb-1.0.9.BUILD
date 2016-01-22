package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = ["libusb.h"]

pkg_outs(
        libs = ["libusb-1.0.so"],
        hdrs = EXTERNAL_HDRS,
        )

genrule(
    name = "mv_hdrs",
    srcs = ["libusb/libusb.h"],
    outs = ["libusb.h"],
    cmd = """
        cp -r $<  $@
    """,
)

qnap_cc_library(
    name = "libusb-1.0.so",
    srcs = [
            "libusb/core.c",
            "libusb/descriptor.c",
            "libusb/io.c",
            "libusb/sync.c",
            "libusb/os/linux_usbfs.c",
            "libusb/os/threads_posix.c",
    ],
    includes = ["libusb"],
    copts = ['-DLIBUSB_DESCRIBE=\\"\\"'],
    linkopts = ["-lpthread"],
)

