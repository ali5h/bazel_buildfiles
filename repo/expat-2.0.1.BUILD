package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

EXTERNAL_HDRS = [
            "expat.h",
            "expat_external.h",
            ]
ALL_HDRS = pkg_outs(
            libs = ["libexpat.so"],
            hdrs = EXTERNAL_HDRS,
            )

genrule(
    name = "mv_hdrs",
    srcs = [
            "lib/expat.h",
            "lib/expat_external.h",
           ],
    outs = [
            "expat.h",
            "expat_external.h",
            ],
    cmd = """
            cp -r $(location lib/expat.h)           $(location expat.h)
            cp -r $(location lib/expat_external.h)  $(location expat_external.h)
            
        """,
)

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

