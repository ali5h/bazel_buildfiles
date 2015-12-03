package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

pkg_libs([":bz2"])
pkg_exes()

EXTERNAL_HDRS = ["bzlib.h"]
INTERNAL_HDRS = glob(["**/*.h"], EXTERNAL_HDRS)

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
    ] + INTERNAL_HDRS,
    hdrs = EXTERNAL_HDRS,
    includes = ["."],
    copts = ["-D_FILE_OFFSET_BITS=64"],
)

