package(default_visibility = ["//visibility:public"])

pkg_libs([":z"])
pkg_exes()

cc_library(
  name = "z",
  srcs = [
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
  hdrs = [
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
        ],
  includes = ['.'],
  copts = [
    "-DPIC",
    "-Wno-unused-variable",
    "-Wno-implicit-function-declaration",
  ],
)

