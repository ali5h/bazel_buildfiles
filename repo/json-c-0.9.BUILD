package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

pkg_libs([":json-c"])
pkg_exes()

cc_library(
  name = "json-c",
  srcs = glob(["*.c"], exclude = ["test*.c"])+["config.h"],
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
  copts = ["-DHAVE_CONFIG_H", "-D_GNU_SOURCE"],
)
