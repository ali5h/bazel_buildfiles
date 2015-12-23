package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

EXTERNAL_HDRS = ["bzlib.h"]

ALL_HDRS = pkg_outs(
        libs = ["libbz2.so"],
        hdrs = EXTERNAL_HDRS,
        )


cc_binary(
    linkshared = 1,
    name = "libbz2.so",
    srcs = [
            "blocksort.c",
            "huffman.c",
            "crctable.c",
            "randtable.c",
            "compress.c",
            "decompress.c",
            "bzlib.c",
    ] + ALL_HDRS,
    includes = ["."],
    copts = ["-D_FILE_OFFSET_BITS=64"],
)

