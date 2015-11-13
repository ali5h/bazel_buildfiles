package(default_visibility = ["//visibility:public"])

EXTERNAL_HDRS = ["sys/eventfd.h"]
INTERNAL_HDRS = glob(["**/*.h"], EXTERNAL_HDRS)

cc_library(
    name = "eventfd",
    srcs = ["eventfd_read.c", "eventfd.c", "eventfd_write.c"] + INTERNAL_HDRS,
    hdrs = EXTERNAL_HDRS,
    includes = ["."],
    copts = [
            "-D_GNU_SOURCE",
            "-D_LARGEFILE_SOURCE",
            "-D_FILE_OFFSET_BITS=64",
            "-DQNAPNAS",
    ],
)

