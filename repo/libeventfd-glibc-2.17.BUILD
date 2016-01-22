package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = ["sys/eventfd.h"]

pkg_outs(
            libs = ["libeventfd.so"],
            hdrs = EXTERNAL_HDRS,
            )

qnap_cc_library(
    name = "libeventfd.so",
    srcs = ["eventfd_read.c", "eventfd.c", "eventfd_write.c"],
    copts = [
            "-D_GNU_SOURCE",
            "-D_LARGEFILE_SOURCE",
            "-D_FILE_OFFSET_BITS=64",
            "-DQNAPNAS",
    ],
)

