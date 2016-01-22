package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = ["libtasn1.h"]

pkg_outs(
            libs = ["libtasn1.so"],
            hdrs = EXTERNAL_HDRS,
            )

genrule(
    name = "mv_hdrs",
    srcs = ["lib/libtasn1.h"],
    outs = EXTERNAL_HDRS,
    cmd = """
            cp -r $(location lib/libtasn1.h) $(location libtasn1.h)
    """,
)

qnap_cc_library(
    name = "libtasn1.so",
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
    includes = ["lib"],
)

