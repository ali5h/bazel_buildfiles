package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = ["stdsoap2.h",]

pkg_outs(
            libs = ["libgsoap.so"],
            hdrs = EXTERNAL_HDRS,
            )

cc_binary(
    linkshared = 1,
    name = "libgsoap.so",
    srcs = ["stdsoap2.cpp"] + glob(["**/*.h"]),
    includes = ["."],
)
