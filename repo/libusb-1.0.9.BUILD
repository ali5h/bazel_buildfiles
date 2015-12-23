package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

EXTERNAL_HDRS = ["libusb.h"]

ALL_HDRS = pkg_outs(
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

cc_binary(
    linkshared = 1,
    name = "libusb-1.0.so",
    srcs = [
            "libusb/core.c",
            "libusb/descriptor.c",
            "libusb/io.c",
            "libusb/sync.c",
            "libusb/os/linux_usbfs.c",
            "libusb/os/threads_posix.c",
    ] + ALL_HDRS,
    includes = [".", "libusb"],
    copts = ["-DHAVE_CONFIG_H", '-DLIBUSB_DESCRIBE=\\"\\"'],
    linkopts = ["-lpthread"],
)

