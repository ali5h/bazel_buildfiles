package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

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

ALL_HDRS = pkg_outs(
            libs = ["libxslt.so"],
            hdrs = EXTERNAL_HDRS,
            )


cc_binary(
    linkshared = 1,
    name = "libxslt.so",
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
    
                "//external:libxml2-so-latest",
    ] + ALL_HDRS,
    includes = ["."],
    copts = ["-DHAVE_CONFIG_H"],
    deps = ["//external:libxml2-hdr-latest"],
)

