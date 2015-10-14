package(default_visibility = ["//visibility:public"])

cc_library(
  name = "sqlite3",
  srcs = glob(["src/*.c"], exclude = ["src/test*.c", "src/tclsqlite.c"]) + 
         glob(["src/*.h"]) + 
         [":sqlite3.h"] +
         [":opcodes.h"] + 
         [":keywordhash.h"] + 
         [":parse.h"],
  hdrs = [
            ":sqlite3.h",
         ],
  includes = ["."],
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
    cmd = 
          "TMPDIR=$$(mktemp -d);"+
          "cp $(location :lemon) $(location src/parse.y) $(location tool/lempar.c) $$TMPDIR/;"+
          "(cd $$TMPDIR && ./lemon parse.y);"+
          "cp $$TMPDIR/parse.c $(location parse.c);"+
          "mawk -f $(location addopcodes.awk) $$TMPDIR/parse.h > $(location parse.h);"+
          "rm -fr $$TMPDIR;",
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

