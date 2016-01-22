package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = [
	"src/evtmaps.h",
	"src/evtlog.h",
]

pkg_outs(
            libs = ["libevtlog.so"],
            hdrs = EXTERNAL_HDRS,
            )

qnap_cc_library(
    name = "libevtlog.so",
    srcs = [
        "src/evtrec.c",
        "src/evtfmt.c",
        "src/evtout.c",
        "src/evtstr.c",
        "src/evtctx.c",
        "src/evttags.c",
        "src/evtsyslog.c",
    ],
)
