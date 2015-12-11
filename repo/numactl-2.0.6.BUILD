package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

pkg_libs(["numa"])
pkg_exes()

EXTERNAL_HDRS = [
            "numacompat1.h",
            "numa.h",
            "numaif.h",
]
INTERNAL_HDRS = glob(["**/*.h"], EXTERNAL_HDRS)

cc_library(
    name = "numa",
    srcs = [
            "libnuma.c",
            "syscall.c",
            "distance.c",
    ] + INTERNAL_HDRS,
    hdrs = EXTERNAL_HDRS,
    includes = ["."],
    copts = ["-fPIC"],
    linkopts = ["-shared", "-Wl,-soname=libnuma.so.1", "-Wl,-init,numa_init", "-Wl,-fini,numa_fini", "-Wl,--version-script", ":versions.ldscript"],
    deps = ["versions.ldscript"],
)

