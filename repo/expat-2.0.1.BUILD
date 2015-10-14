package(default_visibility = ["//visibility:public"])

cc_library(
  name = "expat",
  srcs = glob([
                "lib/*.c",
                "lib/*.h",
                "expat_config.h",
                ]),
  hdrs = ["lib/expat.h", "lib/expat_external.h"],
  includes = [".", "lib"],
  copts = [
            "-Wmissing-prototypes",
            "-Wstrict-prototypes",
            "-fexceptions",
            "-DHAVE_EXPAT_CONFIG_H"
            ], 
)
