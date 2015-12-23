package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

EXTERNAL_HDRS = [
        ":gdbm.h",
        "dbm.h",
        "ndbm.h",
]

ALL_HDRS = pkg_outs(
        libs = ["libgdbm.so", "libgdbm-compat.so"],
        hdrs = EXTERNAL_HDRS,
        )


cc_binary(
        linkshared = 1,
        name = "libgdbm.so",
        srcs = [
            
                "gdbmopen.c",
                "gdbmdelete.c",
                "gdbmfetch.c",
                "gdbmstore.c",
                "gdbmclose.c",
                "gdbmreorg.c",
                "gdbmseq.c",
                "gdbmsync.c",
                "gdbmerrno.c",
                "gdbmexists.c",
                "gdbmfdesc.c",
                "gdbmsetopt.c",
                "bucket.c",
                "falloc.c",
                "findkey.c",
                "global.c",
                "hash.c",
                "update.c",
                "version.c",

            ] + ALL_HDRS,
)

cc_binary(
        linkshared = 1,
        name = "libgdbm-compat.so",
        srcs = [
                "dbminit.c",
                "delete.c",
                "fetch.c",
                "store.c",
                "seq.c",
                "close.c",
                "dbmopen.c",
                "dbmdelete.c",
                "dbmfetch.c",
                "dbmstore.c",
                "dbmseq.c",
                "dbmclose.c",
                "dbmdirfno.c",
                "dbmpagfno.c",
                "dbmrdonly.c",
            ] + ALL_HDRS,
)

genrule(
        name = "gdbm_h",
        srcs = ["gdbm.proto", "gdbm.proto2", "gdbmerrno.h"],
        outs = ["gdbm.h"],
        cmd = """
                cp $(location gdbm.proto) gdbm.h
                grep _ $(location gdbmerrno.h) >> $@
                cat $(location gdbm.proto2) >> $@
            """,
)
