package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = ["popt.h"]

pkg_outs(
            libs = ["libpopt.so"],
            hdrs = EXTERNAL_HDRS,
            )

qnap_cc_library(
        name = "libpopt.so",
        srcs = [
            "popt.c",
            "poptconfig.c",
            "popthelp.c",
            "poptint.c",
            "poptparse.c",
            ],
        copts = [
                "-D_GNU_SOURCE",
                "-D_REENTRANT",
                "-Wno-unused-but-set-variable",
                ],
)

