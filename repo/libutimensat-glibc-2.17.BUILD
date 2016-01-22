package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = ["sys/stat.h"]

pkg_outs(
            libs = ["libutimensat.so"],
            hdrs = EXTERNAL_HDRS,
            )

qnap_cc_library(
    name = "libutimensat.so",
    srcs = ["utimensat.c"],
    copts = [
            "-D_GNU_SOURCE",
            "-D_LARGEFILE_SOURCE",
            "-D_FILE_OFFSET_BITS=64",
            "-DQNAPNAS",
    ],
)

