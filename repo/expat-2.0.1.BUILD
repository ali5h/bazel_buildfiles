package(default_visibility = ["//visibility:public"])

pkg_libs([":expat"])
pkg_exes()

cc_library(
  name = "expat",
  srcs = glob([
                "lib/*.c",
                "lib/*.h",
                "expat_config.h",
                ]),
  hdrs = [
            "lib/expat.h",
            "lib/expat_external.h",
            "lib/xmltok_impl.c",
            "lib/xmltok_ns.c",
            ],
  includes = [".", "lib"],
  copts = [
            "-Wmissing-prototypes",
            "-Wstrict-prototypes",
            "-fexceptions",
            "-DHAVE_EXPAT_CONFIG_H"
            ], 
)
