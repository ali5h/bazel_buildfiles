package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = [
            "numacompat1.h",
            "numa.h",
            "numaif.h",
]

pkg_outs(
            libs = ["libnuma.so"],
            hdrs = EXTERNAL_HDRS,
            )

qnap_cc_library(
    name = "libnuma.so",
    srcs = [
            "libnuma.c",
            "syscall.c",
            "distance.c",
    ],
    copts = ["-fPIC"],
    linkopts = ["-shared", "-Wl,-soname=libnuma.so.1", "-Wl,-init,numa_init", "-Wl,-fini,numa_fini", "-Wl,--version-script", ":versions.ldscript"],
    deps = ["versions.ldscript"],
)

