package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

pkg_libs([":gdbm", ":gdbm-compat"])
pkg_exes()

INTERNAL_HDRS = [
            "autoconf.h",
            "gdbmdefs.h",
            "systems.h",
            "gdbmconst.h",
            "proto.h",
            "extern.h",
            "gdbmerrno.h",
            ]

cc_library(
  name = "gdbm",
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

        ] + INTERNAL_HDRS,
  hdrs = [
        ":gdbm.h",
        "dbm.h",
        "ndbm.h",
        ],
)

cc_library(
  name = "gdbm-compat",
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
        ] + INTERNAL_HDRS,
  hdrs = [
        ":gdbm.h",
        "dbm.h",
        "ndbm.h",
        ],
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
