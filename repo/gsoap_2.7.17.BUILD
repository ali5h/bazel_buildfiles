package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

pkg_libs([":gsoap"])
pkg_exes()

EXTERNAL_HDRS = ["stdsoap2.h",]
INTERNAL_HDRS = glob(["**/*.h"], EXTERNAL_HDRS)

cc_library(
    name = "gsoap",
    srcs = ["stdsoap2.cpp"] + INTERNAL_HDRS,
    hdrs = EXTERNAL_HDRS,
    includes = ["."],
)
