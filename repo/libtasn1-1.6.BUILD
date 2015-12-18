package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

ALL_HDRS = glob(["**/*.h"])
EXTERNAL_HDRS = ["lib/libtasn1.h"]

pkg_outs(
            libs = ["libtasn1.so"],
            hdrs = EXTERNAL_HDRS,
            )

cc_binary(
    linkshared = 1,
    name = "libtasn1.so",
    srcs = ALL_HDRS + [
            "lib/ASN1.c",
            "lib/decoding.c",
            "lib/gstr.c",
            "lib/errors.c",
            "lib/parser_aux.c",
            "lib/structure.c",
            "lib/element.c",
            "lib/coding.c",
    ],
    includes = ["lib", "."],
    copts = ["-DHAVE_CONFIG_H"],
)

