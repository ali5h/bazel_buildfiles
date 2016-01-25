package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = [
            "sqlite3.h",
]

pkg_outs(
            libs = ["libsqlite3.so"],
            hdrs = EXTERNAL_HDRS,
            )

qnap_cc_library(
        name = "libsqlite3.so",
        srcs =  [
        
              "src/alter.c",
              "src/analyze.c",
              "src/attach.c",
              "src/auth.c",
              "src/btree.c",
              "src/build.c",
              "src/callback.c",
              "src/complete.c",
              "src/date.c",
              "src/delete.c",
              "src/expr.c",
              "src/func.c",
              "src/hash.c",
              "src/insert.c",
              "src/legacy.c",
              "src/loadext.c",
              "src/main.c",
              "src/malloc.c",
              "src/os.c",
              "src/os_unix.c",
              "src/os_win.c",
              "src/os_os2.c",
              "src/pager.c",
              "src/pragma.c",
              "src/prepare.c",
              "src/printf.c",
              "src/random.c",
              "src/select.c",
              "src/shell.c",
              "src/table.c",
              "src/tokenize.c",
              "src/trigger.c",
              "src/utf.c",
              "src/update.c",
              "src/util.c",
              "src/vacuum.c",
              "src/vdbe.c",
              "src/vdbeapi.c",
              "src/vdbeaux.c",
              "src/vdbeblob.c",
              "src/vdbefifo.c",
              "src/vdbemem.c",
              "src/vtab.c",
              "src/where.c",
                ] +
             [":sqlite3.h"] +
             [":opcodes.h"] + 
             [":keywordhash.h"] + 
             [":parse.h"],
        copts = [
              "-Wno-int-to-pointer-cast",
              "-Wno-pointer-to-int-cast",
              ],
)

cc_binary(
    name = "lemon",
    srcs = ["tool/lemon.c"],
    copts = [
            "-Wno-maybe-uninitialized",
            "-Wno-implicit-function-declaration",
            ],
)

cc_binary(
    name = "mkkeywordhash",
    srcs = ["tool/mkkeywordhash.c"],
    copts = [
            "-Wno-char-subscripts",
            ],
)

genrule(
    name = "sqlite3_h",
    srcs = ["src/sqlite.h.in"],
    outs = ["sqlite3.h"],
    cmd = "sed -e s/--VERS--/3.4.1/ $< | sed -e s/--VERSION-NUMBER--/3004001/ >$@",
)

genrule(
    name = "parse",
    srcs = ["addopcodes.awk", "src/parse.y", "tool/lempar.c"],
    tools = [":lemon"],
    outs = ["parse.h", "parse.c"],
    cmd = """
          TMPDIR=$$(mktemp -d)
          cp $(location :lemon) $(location src/parse.y) $(location tool/lempar.c) $$TMPDIR/
          (cd $$TMPDIR && ./lemon parse.y)
          cp $$TMPDIR/parse.c $(location parse.c)
          mawk -f $(location addopcodes.awk) $$TMPDIR/parse.h > $(location parse.h)
          rm -fr $$TMPDIR
          """,
)


genrule(
    name = "opcodes_h",
    srcs =[":parse.h", "src/vdbe.c", "mkopcodeh.awk"],
    outs = ["opcodes.h"],
    cmd = "cat $(location :parse.h) $(location src/vdbe.c)| mawk -f $(location mkopcodeh.awk) > $@",
)


genrule(
    name = "opcodes_c",
    srcs =[":opcodes.h", "mkopcodec.awk"],
    outs = ["opcodes.c"],
    cmd = "sort -n -b -k 3 $(location :opcodes.h) | mawk -f $(location mkopcodec.awk) > $@",
)

genrule(
    name = "keywordhash_h",
    outs = ["keywordhash.h"],
    tools = [":mkkeywordhash"],
    cmd = "$(location :mkkeywordhash) > $@",
)

