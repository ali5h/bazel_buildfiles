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
)

genrule(
    name = "mv_lempar",
    srcs = ["tool/lempar.c"],
    outs = ["lempar.c"],
    output_to_bindir = 1,
    cmd = "cat $< > $@",
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
    name = "sqlite3.h",
    srcs = ["src/sqlite.h.in"],
    outs = ["sqlite3.h"],
    cmd = "sed -e s/--VERS--/3.4.1/ $< | sed -e s/--VERSION-NUMBER--/3004001/ >$@",
)

# FIX: donnot use find to get intermediate files
genrule(
    name = "parse",
    srcs = ["addopcodes.awk", "src/parse.y",],
    tools = [":lemon", ":lempar.c"],
    outs = ["parse.h", "parse.c"],
    cmd = " $(location :lemon) $(location src/parse.y); mawk -f $(location addopcodes.awk) $$(find . -name 'parse.h') > $(location parse.h); cat $$(find . -name 'parse.c') > $(location parse.c);",
)


genrule(
    name = "opcodes.h",
    srcs =[":parse.h", "src/vdbe.c", "mkopcodeh.awk"],
    outs = ["opcodes.h"],
    cmd = "cat $(location :parse.h) $(location src/vdbe.c)| mawk -f $(location mkopcodeh.awk) > $@",
)


genrule(
    name = "opcodes.c",
    srcs =[":opcodes.h", "mkopcodec.awk"],
    outs = ["opcodes.c"],
    cmd = "sort -n -b -k 3 $(location :opcodes.h) | mawk -f $(location mkopcodec.awk) > $@",
)

genrule(
    name = "keywordhash.h",
    outs = ["keywordhash.h"],
    tools = [":mkkeywordhash"],
    cmd = "$(location :mkkeywordhash) > $@",
)
