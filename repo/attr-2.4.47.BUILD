package(default_visibility = ["//visibility:public"])

pkg_libs([":attr"])
pkg_exes([":getfattr", ":setfattr"])

OPTS = [
            '-funsigned-char',
            '-fno-strict-aliasing',
            '-DVERSION=\\"2.4.47\\"',
            '-DLOCALEDIR=\\"/usr/share/locale\\"',
            '-DPACKAGE=\\"attr\\"',
]

EXTERNAL_HDRS = [
            "include/attributes.h",
            "include/error_context.h",
            "include/libattr.h",
            "include/xattr.h",
]
INTERNAL_HDRS = glob(["**/*.h"], EXTERNAL_HDRS)


cc_binary(
    name = "getfattr",
    srcs = ["getfattr/getfattr.c"] + INTERNAL_HDRS,
    copts = OPTS,
    deps = [":attr", ":misc"],
)
cc_binary(
    name = "setfattr",
    srcs = ["setfattr/setfattr.c"] + INTERNAL_HDRS,
    copts = OPTS,
    deps = [":attr", ":misc"],
)

cc_library(
    name = "misc",
    srcs = [

            "libmisc/quote.c",
            "libmisc/unquote.c",
            "libmisc/high_water_alloc.c",
            "libmisc/next_line.c",
            "libmisc/walk_tree.c",

    ] + INTERNAL_HDRS,
    hdrs = EXTERNAL_HDRS,
    includes = ["include"],
)

cc_library(
    name = "attr",
    srcs = [

            "libattr/libattr.c",
            "libattr/attr_copy_fd.c",
            "libattr/attr_copy_file.c",
            "libattr/attr_copy_check.c",
            "libattr/attr_copy_action.c",
            "libattr/syscalls.c",
            ":mv_headers",
    
    ] + INTERNAL_HDRS,
    hdrs = EXTERNAL_HDRS,
    includes = ["include", "."],
    copts = [],
)

genrule(
    name = "mv_headers",
    srcs = EXTERNAL_HDRS,
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
