package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = [
        "ntfs-3g/attrib.h",
        "ntfs-3g/attrlist.h",
        "ntfs-3g/bitmap.h",
        "ntfs-3g/bootsect.h",
        "ntfs-3g/collate.h",
        "ntfs-3g/compat.h",
        "ntfs-3g/compress.h",
        "ntfs-3g/debug.h",
        "ntfs-3g/device.h",
        "ntfs-3g/device_io.h",
        "ntfs-3g/dir.h",
        "ntfs-3g/endians.h",
        "ntfs-3g/index.h",
        "ntfs-3g/inode.h",
        "ntfs-3g/layout.h",
        "ntfs-3g/lcnalloc.h",
        "ntfs-3g/logfile.h",
        "ntfs-3g/logging.h",
        "ntfs-3g/mft.h",
        "ntfs-3g/misc.h",
        "ntfs-3g/mst.h",
        "ntfs-3g/ntfstime.h",
        "ntfs-3g/runlist.h",
        "ntfs-3g/security.h",
        "ntfs-3g/support.h",
        "ntfs-3g/types.h",
        "ntfs-3g/unistr.h",
        "ntfs-3g/version.h",
        "ntfs-3g/volume.h",
]

pkg_outs(
            exes = ["mount.ntfs-3g"],
            libs = ["libntfs-3g.so"],
            hdrs = EXTERNAL_HDRS,
            )


genrule(
    name = "mv_hdrs",
    srcs = [
        "include/ntfs-3g/attrib.h",
        "include/ntfs-3g/attrlist.h",
        "include/ntfs-3g/bitmap.h",
        "include/ntfs-3g/bootsect.h",
        "include/ntfs-3g/collate.h",
        "include/ntfs-3g/compat.h",
        "include/ntfs-3g/compress.h",
        "include/ntfs-3g/debug.h",
        "include/ntfs-3g/device.h",
        "include/ntfs-3g/device_io.h",
        "include/ntfs-3g/dir.h",
        "include/ntfs-3g/endians.h",
        "include/ntfs-3g/index.h",
        "include/ntfs-3g/inode.h",
        "include/ntfs-3g/layout.h",
        "include/ntfs-3g/lcnalloc.h",
        "include/ntfs-3g/logfile.h",
        "include/ntfs-3g/logging.h",
        "include/ntfs-3g/mft.h",
        "include/ntfs-3g/misc.h",
        "include/ntfs-3g/mst.h",
        "include/ntfs-3g/ntfstime.h",
        "include/ntfs-3g/runlist.h",
        "include/ntfs-3g/security.h",
        "include/ntfs-3g/support.h",
        "include/ntfs-3g/types.h",
        "include/ntfs-3g/unistr.h",
        "include/ntfs-3g/version.h",
        "include/ntfs-3g/volume.h",
    ],
    outs = EXTERNAL_HDRS,
    cmd = """
      cp -r  $(location include/ntfs-3g/attrib.h)      $(location ntfs-3g/attrib.h)
      cp -r  $(location include/ntfs-3g/attrlist.h)    $(location ntfs-3g/attrlist.h)
      cp -r  $(location include/ntfs-3g/bitmap.h)      $(location ntfs-3g/bitmap.h)
      cp -r  $(location include/ntfs-3g/bootsect.h)    $(location ntfs-3g/bootsect.h)
      cp -r  $(location include/ntfs-3g/collate.h)     $(location ntfs-3g/collate.h)
      cp -r  $(location include/ntfs-3g/compat.h)      $(location ntfs-3g/compat.h)
      cp -r  $(location include/ntfs-3g/compress.h)    $(location ntfs-3g/compress.h)
      cp -r  $(location include/ntfs-3g/debug.h)       $(location ntfs-3g/debug.h)
      cp -r  $(location include/ntfs-3g/device.h)      $(location ntfs-3g/device.h)
      cp -r  $(location include/ntfs-3g/device_io.h)   $(location ntfs-3g/device_io.h)
      cp -r  $(location include/ntfs-3g/dir.h)         $(location ntfs-3g/dir.h)
      cp -r  $(location include/ntfs-3g/endians.h)     $(location ntfs-3g/endians.h)
      cp -r  $(location include/ntfs-3g/index.h)       $(location ntfs-3g/index.h)
      cp -r  $(location include/ntfs-3g/inode.h)       $(location ntfs-3g/inode.h)
      cp -r  $(location include/ntfs-3g/layout.h)      $(location ntfs-3g/layout.h)
      cp -r  $(location include/ntfs-3g/lcnalloc.h)    $(location ntfs-3g/lcnalloc.h)
      cp -r  $(location include/ntfs-3g/logfile.h)     $(location ntfs-3g/logfile.h)
      cp -r  $(location include/ntfs-3g/logging.h)     $(location ntfs-3g/logging.h)
      cp -r  $(location include/ntfs-3g/mft.h)         $(location ntfs-3g/mft.h)
      cp -r  $(location include/ntfs-3g/misc.h)        $(location ntfs-3g/misc.h)
      cp -r  $(location include/ntfs-3g/mst.h)         $(location ntfs-3g/mst.h)
      cp -r  $(location include/ntfs-3g/ntfstime.h)    $(location ntfs-3g/ntfstime.h)
      cp -r  $(location include/ntfs-3g/runlist.h)     $(location ntfs-3g/runlist.h)
      cp -r  $(location include/ntfs-3g/security.h)    $(location ntfs-3g/security.h)
      cp -r  $(location include/ntfs-3g/support.h)     $(location ntfs-3g/support.h)
      cp -r  $(location include/ntfs-3g/types.h)       $(location ntfs-3g/types.h)
      cp -r  $(location include/ntfs-3g/unistr.h)      $(location ntfs-3g/unistr.h)
      cp -r  $(location include/ntfs-3g/version.h)     $(location ntfs-3g/version.h)
      cp -r  $(location include/ntfs-3g/volume.h)      $(location ntfs-3g/volume.h)
    """,
)

cc_binary(
    name = "mount.ntfs-3g",
    srcs = ALL_HDRS + [
            "src/ntfs-3g.c",
            "src/utils.c",
            "libntfs-3g.so",
            ],
    includes = [".", "include/ntfs-3g", "include/fuse-lite"],
    copts = ["-DHAVE_CONFIG_H"],
    linkopts = ["-lrt", "-lpthread"],
)

cc_binary(
    linkshared = 1,
    name = "libntfs-3g.so",
    srcs = ALL_HDRS + [
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

    ],
    includes = [".", "include/ntfs-3g", "include/fuse-lite"],
    copts = ["-DHAVE_CONFIG_H"],
)
