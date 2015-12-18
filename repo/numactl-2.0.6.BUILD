package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

ALL_HDRS = glob(["**/*.h"])
EXTERNAL_HDRS = [
            "numacompat1.h",
            "numa.h",
            "numaif.h",
]

pkg_outs(
            libs = ["libnuma.so"],
            hdrs = EXTERNAL_HDRS,
            )

cc_binary(
    name = "libnuma.so",
    srcs = [
            "libnuma.c",
            "syscall.c",
            "distance.c",
    ] + ALL_HDRS,
    includes = ["."],
    copts = ["-fPIC"],
    linkopts = ["-shared", "-Wl,-soname=libnuma.so.1", "-Wl,-init,numa_init", "-Wl,-fini,numa_fini", "-Wl,--version-script", ":versions.ldscript"],
    deps = ["versions.ldscript"],
)

