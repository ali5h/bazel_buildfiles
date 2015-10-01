package(default_visibility = ["//visibility:public"])

cc_library(
  name = "expat",
  srcs = glob(["lib/*.c"]) +
         glob(["lib/*.h"]) +
         glob(["expat_config.h"]),
  hdrs = ["lib/expat.h", "lib/expat_external.h"],
  includes = ["."],
  copts = [
            "-Wmissing-prototypes",
            "-Wstrict-prototypes",
            "-fexceptions",
            "-DHAVE_EXPAT_CONFIG_H"
            ], 
)
