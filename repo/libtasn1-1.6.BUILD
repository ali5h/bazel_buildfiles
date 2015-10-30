package(default_visibility = ["//visibility:public"])

cc_library(
    name = "tasn1",
    srcs = [
            "lib/ASN1.c",
            "lib/decoding.c",
            "lib/gstr.c",
            "lib/errors.c",
            "lib/parser_aux.c",
            "lib/structure.c",
            "lib/element.c",
            "lib/coding.c",
    ],
    hdrs = ["lib/libtasn1.h"],
    includes = ["lib", "."],
    copts = ["-DHAVE_CONFIG_H"],
)

