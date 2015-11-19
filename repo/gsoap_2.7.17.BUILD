package(default_visibility = ["//visibility:public"])

EXTERNAL_HDRS = ["stdsoap2.h",]
INTERNAL_HDRS = glob(["**/*.h"], EXTERNAL_HDRS)

cc_library(
    name = "gsoap",
    srcs = ["stdsoap2.cpp"] + INTERNAL_HDRS,
    hdrs = EXTERNAL_HDRS,
    includes = ["."],
)
