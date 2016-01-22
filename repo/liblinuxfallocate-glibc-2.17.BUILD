package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)


pkg_outs(
            libs = ["liblinuxfallocate.so"],
            )

qnap_cc_library(
    name = "liblinuxfallocate.so",
    srcs = ["fallocate.c"],
    copts = [
            "-D_GNU_SOURCE",
            "-D_LARGEFILE_SOURCE",
            "-D_FILE_OFFSET_BITS=64",
            "-DQNAPNAS",
    ],
)
