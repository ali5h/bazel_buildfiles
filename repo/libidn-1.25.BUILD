package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)


OPTS = [
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
 
pkg_outs(
        libs = ["libidn.so"],
        hdrs = EXTERNAL_HDRS,
        )

qnap_cc_library(
    name = "libidn.so",
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

            "//external:libunistring-so-latest",

    ],
    includes = ["lib", "win32/include", "lib/gl"],
    copts = [
            "-DLIBIDN_BUILDING",
            '-DLOCALEDIR=\\"/usr/local/share/locale\\"',
    ],
    deps = [
                "//external:libunistring-hdr-latest",
                ].
)

