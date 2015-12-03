package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

pkg_libs([":ntfs-3g"])
pkg_exes([":mount.ntfs-3g"])

EXTERNAL_HDRS = glob(["include/ntfs-3g/*.h"])
INTERNAL_HDRS = glob(["**/*.h"], EXTERNAL_HDRS)

cc_binary(
    name = "mount.ntfs-3g",
    srcs = ["src/ntfs-3g.c", "src/utils.c"],
    includes = [".", "include/ntfs-3g", "include/fuse-lite"],
    copts = ["-DHAVE_CONFIG_H"],
    linkopts = ["-lrt", "-lpthread"],
    deps = [":ntfs-3g"],
)

cc_library(
    name = "ntfs-3g",
    srcs = [
            "libfuse-lite/fuse.c",
            "libfuse-lite/fuse_kern_chan.c",
            "libfuse-lite/fuse_loop.c",
            "libfuse-lite/fuse_loop_mt.c",
            "libfuse-lite/fuse_lowlevel.c",
            "libfuse-lite/fuse_mt.c",
            "libfuse-lite/fuse_opt.c",
            "libfuse-lite/fuse_session.c",
            "libfuse-lite/fuse_signals.c",
            "libfuse-lite/fusermount.c",
            "libfuse-lite/helper.c",
            "libfuse-lite/mount.c",
            "libfuse-lite/mount_util.c",
    
            "libntfs-3g/unix_io.c",
            "libntfs-3g/attrib.c",
            "libntfs-3g/attrlist.c",
            "libntfs-3g/bitmap.c",
            "libntfs-3g/bootsect.c",
            "libntfs-3g/collate.c",
            "libntfs-3g/compat.c",
            "libntfs-3g/compress.c",
            "libntfs-3g/debug.c",
            "libntfs-3g/device.c",
            "libntfs-3g/dir.c",
            "libntfs-3g/index.c",
            "libntfs-3g/inode.c",
            "libntfs-3g/lcnalloc.c",
            "libntfs-3g/logfile.c",
            "libntfs-3g/logging.c",
            "libntfs-3g/mft.c",
            "libntfs-3g/misc.c",
            "libntfs-3g/mst.c",
            "libntfs-3g/runlist.c",
            "libntfs-3g/security.c",
            "libntfs-3g/unistr.c",
            "libntfs-3g/version.c",
            "libntfs-3g/volume.c",

    ] + INTERNAL_HDRS,
    hdrs = EXTERNAL_HDRS,
    includes = [".", "include/ntfs-3g", "include/fuse-lite"],
    copts = ["-DHAVE_CONFIG_H"],
)
