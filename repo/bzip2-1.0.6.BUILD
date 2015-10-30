package(default_visibility = ["//visibility:public"])

cc_library(
    name = "bz2",
    srcs = [
            "blocksort.c",
            "huffman.c",
            "crctable.c",
            "randtable.c",
            "compress.c",
            "decompress.c",
            "bzlib.c",
    ],
    hdrs = ["bzlib.h"],
    includes = ["."],
    copts = ["-D_FILE_OFFSET_BITS=64"],
)

