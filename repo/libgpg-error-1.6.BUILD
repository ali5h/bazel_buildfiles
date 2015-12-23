package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

EXTERNAL_HDRS = ["gpg-error.h"]

ALL_HDRS = pkg_outs(
            libs = ["libgpg-error.so"],
            hdrs = EXTERNAL_HDRS,
            )

genrule(
    name = "mv_hdrs",
    srcs = ["src/gpg-error.h"],
    outs = EXTERNAL_HDRS,
    cmd = """
            cp -r $(location src/gpg-error.h) $(location gpg-error.h)
    """,
)

cc_binary(
    linkshared = 1,
    name = "libgpg-error.so",
    srcs =  ALL_HDRS + [
            "src/init.c",
            "src/strsource.c",
            "src/strerror.c",
            "src/code-to-errno.c",
            "src/code-from-errno.c",
            ":src/code-to-errno.h",
            ":src/code-from-errno.h",

        ],
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
