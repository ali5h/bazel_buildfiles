package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

ALL_HDRS = glob(["**/*.h"])
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

pkg_outs(
            exes = ["fusermount"],
            libs = ["libulockmgr.so", "libfuse.so"],
            hdrs = EXTERNAL_HDRS,
            )

cc_binary(
    name = "fusermount",
    srcs = ["util/fusermount.c","util/mount_util.c"] + ALL_HDRS,
    includes = ["lib", "include"],
)

cc_binary(
    linkshared = 1,
    name = "libulockmgr.so",
    srcs = ALL_HDRS + ["lib/ulockmgr.c"],
    includes = ["include"],
    copts = [
            '-D_FILE_OFFSET_BITS=64',
            '-D_REENTRANT',
            '-DFUSE_USE_VERSION=26',
            '-DFUSERMOUNT_DIR=\\"/usr/local/bin\\"',
            ],
)

cc_binary(
    linkshared = 1,
    name = "libfuse.so",
    srcs = [
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
            ] + ALL_HDRS,
    copts = [
                "-fPIC",
                '-D_FILE_OFFSET_BITS=64',
                '-D_REENTRANT',
                '-DFUSE_USE_VERSION=26',
                '-DFUSERMOUNT_DIR=\\"/usr/local/bin\\"'
            ],
    linkopts = ["-ldl", "-pthread", "-shared", "-Wl,--version-script", "fuse_versionscript.ldscript"],
    includes = ["include"],
    deps = ["fuse_versionscript.ldscript"],
)

genrule(
    name = "lds_rename",
    srcs = ["lib/fuse_versionscript"],
    outs = ["fuse_versionscript.ldscript"],
    cmd = "cat $< > $@"
)
