package(default_visibility = ["//visibility:public"])

cc_library(
  name = "json-c",
  srcs = glob(["*.c"], exclude = ["test*.c"]),
  hdrs = [
            "arraylist.h",
            "bits.h",
            "debug.h",
            "json.h",
            "json_object_private.h",
            "json_util.h",
            "printbuf.h",
            "json_object.h",
            "json_tokener.h",
            "linkhash.h",
         ],
  copts = ["-DHAVE_CONFIG_H"],
)
