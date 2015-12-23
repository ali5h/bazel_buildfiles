package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

EXTERNAL_HDRS = [
            "numacompat1.h",
            "numa.h",
            "numaif.h",
]

ALL_HDRS = pkg_outs(
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

