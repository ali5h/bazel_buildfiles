package(default_visibility = ["//visibility:public"])

licenses(["notice"])  # BSD/MIT-like license (for zlib)

cc_library(
  name = "zlib-1.2.8",
  srcs = glob(["zlib-1.2.8/*.c"]),
  hdrs = glob(["zlib-1.2.8/*.h"]),
  copts = [
    "-Wno-unused-variable",
    "-Wno-implicit-function-declaration",
  ],
)
