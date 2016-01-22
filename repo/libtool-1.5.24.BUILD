package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = ["libltdl/ltdl.h"]

pkg_outs(
        libs = ["libltdl.so"],
        hdrs = EXTERNAL_HDRS,
        )

qnap_cc_library(
        name = "libltdl.so",
        srcs = [
            "libltdl/ltdl.c",
            ],
        includes = ["libltdl"],
)

