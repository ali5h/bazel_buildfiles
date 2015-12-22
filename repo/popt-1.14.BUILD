package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

ALL_HDRS = glob(["**/*.h"])
EXTERNAL_HDRS = ["popt.h"]

pkg_outs(
            libs = ["libpopt.so"],
            hdrs = EXTERNAL_HDRS,
            )

cc_binary(
        linkshared = 1,
        name = "libpopt.so",
        srcs = ALL_HDRS + [
            "popt.c",
            "poptconfig.c",
            "popthelp.c",
            "poptint.c",
            "poptparse.c",
            ],
        includes = ["."],
        copts = [
                "-DHAVE_CONFIG_H",
                "-D_GNU_SOURCE",
                "-D_REENTRANT",
                "-Wno-unused-but-set-variable",
                ],
)

