package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

pkg_libs([":ltdl"])
pkg_exes()

cc_library(
  name = "ltdl",
  srcs = [
        "libltdl/ltdl.c",
        "libltdl/config.h",
        ],
  hdrs = [
        "libltdl/ltdl.h",
        ],
  includes = ["libltdl/"],
  copts = ["-DHAVE_CONFIG_H"],
)

