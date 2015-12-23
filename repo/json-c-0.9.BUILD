package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

EXTERNAL_HDRS  = [
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
         ]

ALL_HDRS = pkg_outs(
            libs = ["libjson-c.so"],
            )

cc_binary(
        linkshared = 1,
        name = "libjson-c.so",
        srcs = ALL_HDRS + glob(["*.c"], exclude = ["test*.c"]),
        copts = ["-DHAVE_CONFIG_H", "-D_GNU_SOURCE"],
)
