package(default_visibility = ["//visibility:public"])

EXTERNAL_HDRS = ["libusb/libusb.h"]
INTERNAL_HDRS = glob(["**/*.h"], EXTERNAL_HDRS)

cc_library(
    name = "usb-1.0",
    srcs = [
            "libusb/core.c",
            "libusb/descriptor.c",
            "libusb/io.c",
            "libusb/sync.c",
            "libusb/os/linux_usbfs.c",
            "libusb/os/threads_posix.c",
    ] + INTERNAL_HDRS,
    hdrs = EXTERNAL_HDRS,
    includes = [".", "libusb"],
    copts = ["-DHAVE_CONFIG_H", '-DLIBUSB_DESCRIBE=\\"\\"'],
    linkopts = ["-lpthread"],
)

