package(default_visibility = ["//visibility:public"])

pkg_libs(["rsync"])
pkg_exes()

EXTERNAL_HDRS = ["librsync-config.h", "librsync.h"]
INTERNAL_HDRS = glob(["**/*.h"], EXTERNAL_HDRS)

cc_library(
    name = "rsync",
    srcs = [
    
                "prototab.c",
                "base64.c",
                "buf.c",
                "checksum.c",
                "command.c",
                "delta.c",
                "emit.c",
                "fileutil.c",
                "hex.c",
                "job.c",
                "mdfour.c",
                "mksum.c",
                "msg.c",
                "netint.c",
                "patch.c",
                "readsums.c",
                "rollsum.c",
                "scoop.c",
                "search.c",
                "stats.c",
                "stream.c",
                "sumset.c",
                "trace.c",
                "tube.c",
                "util.c",
                "version.c",
                "whole.c",

    ] + INTERNAL_HDRS,
    hdrs = EXTERNAL_HDRS,
    includes = ["."],
    copts = ["-DHAVE_CONFIG_H",],
)

