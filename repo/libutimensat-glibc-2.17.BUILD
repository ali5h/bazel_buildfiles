package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

EXTERNAL_HDRS = ["sys/stat.h"]

ALL_HDRS = pkg_outs(
            libs = ["libutimensat.so"],
            hdrs = EXTERNAL_HDRS,
            )

cc_binary(
    linkshared = 1,
    name = "libutimensat.so",
    srcs = ["utimensat.c"] + ALL_HDRS,
    includes = ["."],
    copts = [
            "-D_GNU_SOURCE",
            "-D_LARGEFILE_SOURCE",
            "-D_FILE_OFFSET_BITS=64",
            "-DQNAPNAS",
    ],
)

