package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

pkg_libs([":ulockmgr", ":fuse"])
pkg_exes([":fusermount"])

EXTERNAL_HDRS = [
            "include/cuse_lowlevel.h",
            "include/fuse.h",
            "include/fuse_common.h",
            "include/fuse_common_compat.h",
            "include/fuse_compat.h",
            "include/fuse_kernel.h",
            "include/fuse_lowlevel.h",
            "include/fuse_lowlevel_compat.h",
            "include/fuse_opt.h",
            "include/ulockmgr.h",
            ]
INTERNAL_HDRS = [
            "lib/fuse_i.h",
            "lib/fuse_misc.h",
            "lib/mount_util.h",
            "include/config.h",
                ]

filegroup(
    name = "c_srcs",
    srcs = EXTERNAL_HDRS + INTERNAL_HDRS + [
            "lib/mount.c",
            "lib/mount_util.c",
            "lib/modules/iconv.c",
            "lib/fuse.c",
            "lib/fuse_kern_chan.c",
            "lib/fuse_loop.c",
            "lib/fuse_loop_mt.c",
            "lib/fuse_lowlevel.c",
            "lib/fuse_mt.c",
            "lib/fuse_opt.c",
            "lib/fuse_session.c",
            "lib/fuse_signals.c",
            "lib/buffer.c",
            "lib/cuse_lowlevel.c",
            "lib/helper.c",
            "lib/modules/subdir.c",
    ],
)

cc_binary(
    name = "fusermount",
    srcs = ["util/fusermount.c","util/mount_util.c"] + INTERNAL_HDRS,
    includes = ["lib", "include"],
)

cc_library(
    name = "ulockmgr",
    srcs = ["lib/ulockmgr.c"],
    hdrs = EXTERNAL_HDRS,
    includes = ["include"],
    copts = [
            '-D_FILE_OFFSET_BITS=64',
            '-D_REENTRANT',
            '-DFUSE_USE_VERSION=26',
            '-DFUSERMOUNT_DIR=\\"/usr/local/bin\\"',
            ],
)

cc_library(
    name = "fuse",
    srcs = [":libfuse.so"],
    hdrs = EXTERNAL_HDRS,
    includes = ["include"],
)

genrule(
    name = "symbol_versioning",
    srcs = [":c_srcs", "lib/fuse_versionscript"],
    outs = ["libfuse.so"],
    cmd = """
        TMPDIR=$$(mktemp -d)
        cp $(locations :c_srcs) $(location lib/fuse_versionscript) $$TMPDIR/
        (cd $$TMPDIR && $(CC) *.c -I. -ldl -pthread -fPIC -shared -D_FILE_OFFSET_BITS=64 -D_REENTRANT -DFUSE_USE_VERSION=26 -DFUSERMOUNT_DIR=\\"/usr/local/bin\\" -Wl,--version-script=fuse_versionscript -o libfuse.so)
        cp $$TMPDIR/libfuse.so  $@
        rm -fr $$TMPDIR
    """
)
