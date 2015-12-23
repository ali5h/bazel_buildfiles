package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

EXTERNAL_HDRS = [
            "attr/attributes.h",
            "attr/error_context.h",
            "attr/libattr.h",
            "attr/xattr.h",
]

ALL_HDRS = pkg_outs(
            exes = ["getfattr", "setfattr"],
            libs = ["libattr.so"],
            hdrs = EXTERNAL_HDRS,
            )

OPTS = [
            '-funsigned-char',
            '-fno-strict-aliasing',
            '-DVERSION=\\"2.4.47\\"',
            '-DLOCALEDIR=\\"/usr/share/locale\\"',
            '-DPACKAGE=\\"attr\\"',
]

cc_binary(
    name = "getfattr",
    srcs = ["getfattr/getfattr.c", "libattr.so"] + ALL_HDRS + EXTERNAL_HDRS,
    copts = OPTS,
    includes = ["."],
    deps = [":misc"],
)
cc_binary(
    name = "setfattr",
    srcs = ["setfattr/setfattr.c", "libattr.so"] + ALL_HDRS + EXTERNAL_HDRS,
    copts = OPTS,
    includes = ["."],
    deps = [":misc"],
)

cc_library(
    name = "misc",
    srcs = [

            "libmisc/quote.c",
            "libmisc/unquote.c",
            "libmisc/high_water_alloc.c",
            "libmisc/next_line.c",
            "libmisc/walk_tree.c",

    ] + ALL_HDRS,
    includes = ["include"],
)

cc_binary(
    linkshared = 1,
    name = "libattr.so",
    srcs = [

            "libattr/libattr.c",
            "libattr/attr_copy_fd.c",
            "libattr/attr_copy_file.c",
            "libattr/attr_copy_check.c",
            "libattr/attr_copy_action.c",
            "libattr/syscalls.c",
            ":mv_headers",
    
    ] + ALL_HDRS,
    includes = ["include", "."],
)

genrule(
    name = "mv_headers",
    srcs = [
            "include/attributes.h",
            "include/error_context.h",
            "include/libattr.h",
            "include/xattr.h",
    ],
    outs = [
            "attr/attributes.h",
            "attr/error_context.h",
            "attr/libattr.h",
            "attr/xattr.h",
    ],
    cmd = """
       cp    $(location include/attributes.h)    $(location attr/attributes.h)
       cp    $(location include/error_context.h) $(location attr/error_context.h)
       cp    $(location include/libattr.h)       $(location attr/libattr.h)
       cp    $(location include/xattr.h)         $(location attr/xattr.h)
    """

)
