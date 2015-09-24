package(default_visibility = ["//visibility:public"])

cc_library(
  name = "sqlite3",
  srcs = glob(["*.c"], exclude = ["test*.c"]),
  hdrs = [
            "sss.h",
            "bits.h",
         ],
  copts = ["-DHAVE_CONFIG_H"],
  deps = [":sqlite3.h"],
)

genrule(
    name = "sqlite3.h",
    srcs = ["src/sqlite.h.in"],
    outs = ["sqlite3.h"],
    cmd = "sed -e s/--VERS--/3.4.1/ $< | sed -e s/--VERSION-NUMBER--/3004001/ >$@",
)

cc_binary(
    name = "lemon",
    srcs = ["tool/lemon.c"],
    copts = [
            "-Wno-maybe-uninitialized",
            "-Wno-implicit-function-declaration",
            ],
)

genrule(
    name = "parse",
    srcs = ["addopcodes.awk", "src/parse.y", "tool/lempar.c"],
    tools = [":lemon"],
    outs = ["parse.h", "parse.c"],
    cmd = "cp $(location tool/lempar.c) $$(dirname $(location :lemon)); $(location :lemon) $(location src/parse.y); mawk -f $(location addopcodes.awk) $$(find . -name 'parse.h') > $(location parse.h); cat $$(find . -name 'parse.c') > $(location parse.c);",
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
