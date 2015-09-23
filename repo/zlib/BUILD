package(default_visibility = ["//visibility:public"])

cc_library(
  name = "z",
  srcs = glob(["*.c"]),
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
    "-Wno-unused-variable",
    "-Wno-implicit-function-declaration",
  ],
)
