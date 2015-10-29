package(default_visibility = ["//visibility:public"])

cc_library(
    name = "usb",
    srcs = [
            "libusb/libusbi.h",
            "libusb/core.c",
            "libusb/descriptor.c",
            "libusb/io.c",
            "libusb/sync.c",
            "libusb/os/linux_usbfs.c",
            "libusb/os/linux_usbfs.h",
            "libusb/os/darwin_usb.h",
            "libusb/os/windows_usb.h",
            "libusb/os/threads_posix.h",
            "libusb/os/threads_posix.c",
            "libusb/os/poll_posix.h",
            "libusb/os/poll_windows.h",
            "config.h",
    ],
    hdrs = ["libusb/libusb.h"],
    includes = [".", "libusb"],
    copts = ["-DHAVE_CONFIG_H", '-DLIBUSB_DESCRIBE=\\"\\"'],
)

