package(default_visibility = ["//visibility:public"])

cc_library(
  name = "id3tag",
  srcs = glob(["*.c"]),
  hdrs = ["id3tag.h"],
  copts = ["-DHAVE_CONFIG_H"],
  deps = ["//external:zlib-latest"],
)
