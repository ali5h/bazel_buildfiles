package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = ["bzlib.h"]

pkg_outs(
        libs = ["libbz2.so"],
        hdrs = EXTERNAL_HDRS,
        )


qnap_cc_library(
    name = "libbz2.so",
    srcs = [
            "blocksort.c",
            "huffman.c",
            "crctable.c",
            "randtable.c",
            "compress.c",
            "decompress.c",
            "bzlib.c",
    ],
    copts = ["-D_FILE_OFFSET_BITS=64"],
)

