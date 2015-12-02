package(default_visibility = ["//visibility:public"])

pkg_libs([":aio"])
pkg_exes()

EXTERNAL_HDRS = ["src/libaio.h"]
INTERNAL_HDRS = glob(["src/*.h"], EXTERNAL_HDRS)

filegroup(
    name = "c_srcs",
    srcs = EXTERNAL_HDRS + INTERNAL_HDRS + [
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
    ],
)

genrule(
    name = "symbol_versioning",
    srcs = [":c_srcs", "src/libaio.map"],
    outs = ["libaio.so"],
    cmd = """
        TMPDIR=$$(mktemp -d)
        cp $(locations :c_srcs) $(location src/libaio.map) $$TMPDIR/
        (cd $$TMPDIR && $(CC) *.c -I. -nostdlib -nostartfiles -fomit-frame-pointer -O2 -fPIC -shared -Wl,--version-script=libaio.map -o libaio.so)
        cp $$TMPDIR/libaio.so  $@
        rm -fr $$TMPDIR
    """
)

cc_library(
  name = "aio",
  srcs = [":libaio.so"],
  hdrs = EXTERNAL_HDRS,
  includes = ["src"],
)


