package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

EXTERNAL_HDRS = [
	"src/evtmaps.h",
	"src/evtlog.h",
]

ALL_HDRS = pkg_outs(
            libs = ["libevtlog.so"],
            hdrs = EXTERNAL_HDRS,
            )

cc_binary(
    linkshared = 1,
    name = "libevtlog.so",
    srcs = [
        "src/evtrec.c",
        "src/evtfmt.c",
        "src/evtout.c",
        "src/evtstr.c",
        "src/evtctx.c",
        "src/evttags.c",
        "src/evtsyslog.c",
    ] + ALL_HDRS,
    includes = ["."],
    copts = [
        '-DHAVE_CONFIG_H',
    ],
)
