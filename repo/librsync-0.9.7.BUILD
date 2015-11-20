package(default_visibility = ["//visibility:public"])

EXTERNAL_HDRS = ["librsync-config.h", ]
INTERNAL_HDRS = glob(["**/*.h"], EXTERNAL_HDRS)

cc_library(
    name = "",
    srcs = [] + INTERNAL_HDRS,
    hdrs = EXTERNAL_HDRS,
    includes = [],
    copts = [
    
            "-Wall",
            "-Wshadow",
            "-Wundef",
            "-Wwrite-strings",
            "-Wmissing-prototypes",
            "-Wmissing-declarations",
            "-Wstrict-prototypes",
            "-Wpointer-arith",
            "-Wcast-qual",
            "-Wcast-align",

    ],
)

