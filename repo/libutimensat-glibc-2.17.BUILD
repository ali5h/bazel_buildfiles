package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

pkg_libs([":utimensat"])
pkg_exes()

EXTERNAL_HDRS = ["sys/stat.h"]
INTERNAL_HDRS = glob(["**/*.h"], EXTERNAL_HDRS)

cc_library(
    name = "utimensat",
    srcs = ["utimensat.c"] + INTERNAL_HDRS,
    hdrs = EXTERNAL_HDRS,
    includes = ["."],
    copts = [
            "-D_GNU_SOURCE",
            "-D_LARGEFILE_SOURCE",
            "-D_FILE_OFFSET_BITS=64",
            "-DQNAPNAS",
    ],
)

