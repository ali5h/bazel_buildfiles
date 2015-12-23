package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

ALL_HDRS = glob(["**/*.h"])

pkg_outs(
            libs = ["liblinuxfallocate.so"],
            )

cc_binary(
    linkshared = 1,
    name = "liblinuxfallocate.so",
    srcs = ["fallocate.c"] + ALL_HDRS,
    includes = ["."],
    copts = [
            "-D_GNU_SOURCE",
            "-D_LARGEFILE_SOURCE",
            "-D_FILE_OFFSET_BITS=64",
            "-DQNAPNAS",
    ],
)
