package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

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

pkg_outs(
            libs = ["libjson.so"],
            )

qnap_cc_library(
        name = "libjson.so",
        srcs = [

            "arraylist.c",
            "debug.c",
            "json_object.c",
            "json_tokener.c",
            "json_util.c",
            "linkhash.c",
            "printbuf.c",

        ],
        copts = ["-D_GNU_SOURCE"],
)
