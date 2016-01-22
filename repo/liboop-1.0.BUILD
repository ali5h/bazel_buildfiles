package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = [
        "oop.h",
        "oop-adns.h",
        "oop-glib.h",
        "oop-tcl.h",
        "oop-www.h",
        "oop-rl.h",
        "oop-read.h",
]

pkg_outs(
            libs = ["liboop.so"],
            hdrs = EXTERNAL_HDRS,
            )

qnap_cc_library(
    name = "liboop.so",
    srcs = [
            "sys.c",
            "select.c",
            "signal.c",
            "alloc.c",
            "read.c",
            "read-fd.c",
            "read-mem.c",
    ],
)

