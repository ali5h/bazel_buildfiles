package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

EXTERNAL_HDRS = ["stdsoap2.h",]

ALL_HDRS = pkg_outs(
            libs = ["libgsoap.so"],
            hdrs = EXTERNAL_HDRS,
            )

cc_binary(
    linkshared = 1,
    name = "libgsoap.so",
    srcs = ["stdsoap2.cpp"] + ALL_HDRS,
    includes = ["."],
)
