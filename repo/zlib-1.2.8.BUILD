package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs")

ALL_HDRS = glob(["**/*.h"])
EXTERNAL_HDRS = [
            "crc32.h",
            "deflate.h",
            "gzguts.h",
            "inffast.h",
            "inffixed.h",
            "inflate.h",
            "inftrees.h",
            "trees.h",
            "zconf.h",
            "zlib.h",
            "zutil.h",
        ]

pkg_outs(
            libs = ["libz.so"],
            hdrs = EXTERNAL_HDRS,
            )

cc_binary(
    linkshared = 1,
    name = "libz.so",
    srcs = ALL_HDRS + [
            "adler32.c",
            "crc32.c",
            "deflate.c",
            "infback.c",
            "inffast.c",
            "inflate.c",
            "inftrees.c",
            "trees.c",
            "zutil.c",
            "compress.c",
            "uncompr.c",
            "gzclose.c",
            "gzlib.c",
            "gzread.c",
            "gzwrite.c",
    ],
    copts = [
    "-DPIC",
    "-Wno-unused-variable",
    "-Wno-implicit-function-declaration",
    ],
    linkopts = [
            "-Wl,-soname,libz.so.1"
    ],
)

