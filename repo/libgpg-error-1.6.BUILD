package(default_visibility = ["//visibility:public"])

EXTERNAL_HDRS = ["src/gpg-error.h",]
INTERNAL_HDRS = glob(["**/*.h"], EXTERNAL_HDRS)

cc_library(
    name = "gpg-error",
    srcs =  INTERNAL_HDRS + [
            "src/init.c",
            "src/strsource.c",
            "src/strerror.c",
            "src/code-to-errno.c",
            "src/code-from-errno.c",
            ":src/code-to-errno.h",
            ":src/code-from-errno.h",

        ],
    hdrs = EXTERNAL_HDRS,
    includes = ["src", "."],
    copts = ["-DHAVE_CONFIG_H", '-DLOCALEDIR=\\"/usr/local/share/locale\\"'],
)

cc_binary(
    name = "mkerrcodes",
    srcs = ["src/mkerrcodes.c", ":mkerrcodes.h",],
    includes = ["src"],
)

genrule(
    name = "code-to-errno.h",
    srcs = ["src/mkerrnos.awk", "src/errnos.in",],
    outs = ["src/code-to-errno.h"],
    cmd = """
        mawk -f $(location src/mkerrnos.awk) $(location src/errnos.in) >$@
    """,
)

genrule(
    name = "mkerrcodes.h",
    srcs = ["src/mkerrcodes.awk", "src/mkerrcodes1.awk", "src/errnos.in",],
    outs = ["src/mkerrcodes.h"],
    cmd = """
        mawk -f $(location src/mkerrcodes1.awk) $(location src/errnos.in) | gcc -E - | grep GPG_ERR_ | mawk -f $(location src/mkerrcodes.awk) >$@
    """,
)

genrule(
    name = "code-from-errno.h",
    srcs = ["src/mkerrcodes2.awk",],
    outs = ["src/code-from-errno.h"],
    tools = [":mkerrcodes"],
    cmd = """
        $(location :mkerrcodes) | mawk -f $(location src/mkerrcodes2.awk) >$@
    """,
)
