package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

EXTERNAL_HDRS = []

pkg_outs(
        exes = [],
        libs = [],
        hdrs = EXTERNAL_HDRS,
        )

cc_binary(
    linkshared = 1,
    name = "",
    srcs = [] + ALL_HDRS,
    includes = [],
    copts = [],
)

