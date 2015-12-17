package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

ALL_HDRS = glob(["**/*.h"])
EXTERNAL_HDRS = [
            "lib/expat.h",
            "lib/expat_external.h",
            ]
pkg_outs(["libexpat.so"])

cc_binary(
            linkshared = 1,
            name = "libexpat.so",
            srcs = glob([
                        "lib/xmlparse.c",
                        "lib/xmlrole.c",
                        "lib/xmltok.c",
                        ]) + ALL_HDRS,
            includes = [".", "lib"],
            copts = [
                    "-Wmissing-prototypes",
                    "-Wstrict-prototypes",
                    "-fexceptions",
                    "-DHAVE_EXPAT_CONFIG_H"
                    ], 
            deps = [":special_ext"],
)

cc_library(
            name = "special_ext",
            hdrs = ["lib/xmltok_impl.c", "lib/xmltok_ns.c"],
)

