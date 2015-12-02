package(default_visibility = ["//visibility:public"])

cc_library(
  name = "popt",
  srcs = [
        "popt.c",
        "poptconfig.c",
        "popthelp.c",
        "poptint.c",
        "poptparse.c",
        "system.h",
        "config.h",
        "poptint.h",
        ],
  hdrs = ["popt.h"],
  includes = ["."],
  copts = [
            "-DHAVE_CONFIG_H",
            "-D_GNU_SOURCE",
            "-D_REENTRANT",
            "-Wno-unused-but-set-variable",
            ],
)

pkg_libs([":popt"])
pkg_exes()
