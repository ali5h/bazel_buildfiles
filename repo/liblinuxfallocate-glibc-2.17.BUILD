package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

pkg_libs([":linuxfallocate"])
pkg_exes()

INTERNAL_HDRS = glob(["**/*.h"])

cc_library(
    name = "linuxfallocate",
    srcs = ["fallocate.c"] + INTERNAL_HDRS,
    includes = ["."],
    copts = [
            "-D_GNU_SOURCE",
            "-D_LARGEFILE_SOURCE",
            "-D_FILE_OFFSET_BITS=64",
            "-DQNAPNAS",
    ],
)
