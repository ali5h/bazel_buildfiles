package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

pkg_libs(["xslt"])
pkg_exes()

EXTERNAL_HDRS = [

                "libexslt/exslt.h",
                "libexslt/exsltconfig.h",
                "libexslt/exsltexports.h",
                "libxslt/attributes.h",
                "libxslt/documents.h",
                "libxslt/extensions.h",
                "libxslt/extra.h",
                "libxslt/functions.h",
                "libxslt/imports.h",
                "libxslt/keys.h",
                "libxslt/namespaces.h",
                "libxslt/numbersInternals.h",
                "libxslt/pattern.h",
                "libxslt/preproc.h",
                "libxslt/security.h",
                "libxslt/templates.h",
                "libxslt/transform.h",
                "libxslt/variables.h",
                "libxslt/xslt.h",
                "libxslt/xsltInternals.h",
                "libxslt/xsltconfig.h",
                "libxslt/xsltexports.h",
                "libxslt/xsltlocale.h",
                "libxslt/xsltutils.h",

]
INTERNAL_HDRS = glob(["**/*.h"], EXTERNAL_HDRS)

cc_library(
    name = "xslt",
    srcs = [
    
                "libxslt/attrvt.c",
                "libxslt/xslt.c",
                "libxslt/xsltlocale.c",
                "libxslt/xsltutils.c",
                "libxslt/pattern.c",
                "libxslt/templates.c",
                "libxslt/variables.c",
                "libxslt/keys.c",
                "libxslt/numbers.c",
                "libxslt/extensions.c",
                "libxslt/extra.c",
                "libxslt/functions.c",
                "libxslt/namespaces.c",
                "libxslt/imports.c",
                "libxslt/attributes.c",
                "libxslt/documents.c",
                "libxslt/preproc.c",
                "libxslt/transform.c",
                "libxslt/security.c",
    
    ] + INTERNAL_HDRS,
    hdrs = EXTERNAL_HDRS,
    includes = ["."],
    copts = ["-DHAVE_CONFIG_H"],
    deps = ["//external:libxml2-latest"],
)
