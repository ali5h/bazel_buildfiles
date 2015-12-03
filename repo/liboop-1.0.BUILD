package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

pkg_libs([":oop"])
pkg_exes()

cc_library(
    name = "oop",
    srcs = [
            "sys.c",
            "select.c",
            "signal.c",
            "alloc.c",
            "read.c",
            "read-fd.c",
            "read-mem.c",
    ],
    hdrs = [
            "oop.h",
            "oop-adns.h",
            "oop-glib.h",
            "oop-tcl.h",
            "oop-www.h",
            "oop-rl.h",
            "oop-read.h",
    ],
    includes = ["."],
    copts = [],
)

