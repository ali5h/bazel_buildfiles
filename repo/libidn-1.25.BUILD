package(default_visibility = ["//visibility:public"])

OPTS = [
            "-DHAVE_CONFIG_H",
            "-DLIBIDN_BUILDING",
            '-DLOCALEDIR=\\"/usr/local/share/locale\\"',
    ]

EXTERNAL_HDRS = [
            "lib/idn-free.h",
            "win32/include/idn-int.h",
            "lib/idna.h",
            "lib/pr29.h",
            "lib/punycode.h",
            "lib/stringprep.h",
            "lib/tld.h",
]
INTERNAL_HDRS = glob(["**/*.h"], EXTERNAL_HDRS)

cc_library(
    name = "idn",
    srcs = [
    
            "lib/tld.c",
            "lib/tlds.c",
            "lib/nfkc.c",
            "lib/toutf8.c",
            "lib/version.c",
            "lib/stringprep.c",
            "lib/rfc3454.c",
            "lib/profiles.c",
            "lib/punycode.c",
            "lib/idna.c",
            "lib/pr29.c",
            "lib/idn-free.c",
            "lib/strerror-idna.c",
            "lib/strerror-pr29.c",
            "lib/strerror-punycode.c",
            "lib/strerror-stringprep.c",
            "lib/strerror-tld.c",
            "lib/gl/unistr/u8-mbtoucr.c",
            "lib/gl/unistr/u8-uctomb.c",
            "lib/gl/unistr/u8-uctomb-aux.c",
            "lib/gl/c-ctype.c",
            "lib/gl/c-strcasecmp.c",
            "lib/gl/c-strncasecmp.c",
            "lib/gl/striconv.c",


    ] + INTERNAL_HDRS,
    hdrs = EXTERNAL_HDRS,
    includes = [".", "lib"],
    copts = OPTS,
    deps = ["//external:libunistring-latest"].
)

# cc_library(
#     name = "",
#     srcs = [] + INTERNAL_HDRS,
#     hdrs = EXTERNAL_HDRS,
#     includes = [],
#     copts = [],
# )
# cc_library(
#     name = "",
#     srcs = [] + INTERNAL_HDRS,
#     hdrs = EXTERNAL_HDRS,
#     includes = [],
#     copts = [],
# )
