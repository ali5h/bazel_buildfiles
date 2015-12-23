package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

EXTERNAL_HDRS = [
        "oop.h",
        "oop-adns.h",
        "oop-glib.h",
        "oop-tcl.h",
        "oop-www.h",
        "oop-rl.h",
        "oop-read.h",
]

ALL_HDRS = pkg_outs(
            libs = ["liboop.so"],
            hdrs = EXTERNAL_HDRS,
            )

cc_binary(
    linkshared = 1,
    name = "liboop.so",
    srcs = ALL_HDRS + [
            "sys.c",
            "select.c",
            "signal.c",
            "alloc.c",
            "read.c",
            "read-fd.c",
            "read-mem.c",
    ],
    includes = ["."],
    copts = [],
)

