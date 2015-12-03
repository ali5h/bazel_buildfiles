package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

EXTERNAL_HDRS = []
INTERNAL_HDRS = glob(["**/*.h"], EXTERNAL_HDRS)

cc_library(
    name = "",
    srcs = [] + INTERNAL_HDRS,
    hdrs = EXTERNAL_HDRS,
    includes = [],
    copts = [],
)

