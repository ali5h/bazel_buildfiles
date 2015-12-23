package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

EXTERNAL_HDRS = ["libaio.h"]
ALL_HDRS = pkg_outs(
            libs = ["libaio.so"],
            hdrs = EXTERNAL_HDRS,
            )

# because Bazel only support *.ld, *.lds, *.ldscript in deps
genrule(
    name = "lds_rename",
    srcs = ["src/libaio.map"],
    outs = ["libaio.ldscript"],
    cmd = """
        cat $< > $@
    """
)

genrule(
    name = "mv_hdrs",
    srcs = ["src/libaio.h"],
    outs = ["libaio.h"],
    cmd = "cp -r $< $@",
)

cc_binary(
    linkshared = 1,
    name = "libaio.so",
    srcs = [
        "src/io_queue_init.c",
        "src/io_queue_release.c",
        "src/io_queue_wait.c",
        "src/io_queue_run.c",
        "src/io_getevents.c",
        "src/io_submit.c",
        "src/io_cancel.c",
        "src/io_setup.c",
        "src/io_destroy.c",
        "src/raw_syscall.c",
        "src/compat-0_1.c",
    ] + ALL_HDRS,
    includes = ["src"],
    copts = ["-nostdlib", "-nostartfiles", "-fomit-frame-pointer", "-fPIC" ],
    linkopts = ["-Wl,-soname=libaio.so.1", "-Wl,--version-script", "libaio.ldscript"],
    deps = ["libaio.ldscript"],
)
