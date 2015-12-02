package(default_visibility = ["//visibility:public"])

pkg_libs([":com_err"])
pkg_exes()

cc_library(
    name = "com_err",
    srcs = [
        "lib/et/error_message.c",
        "lib/et/et_name.c",
        "lib/et/init_et.c",
        "lib/et/com_err.c",
        "lib/et/com_right.c",
        ":lib/dirpaths.h",
        "lib/config.h",
        "lib/et/error_table.h",
        "lib/et/internal.h",
        ],
    hdrs = ["lib/et/com_err.h"],
    includes = ["lib", "lib/et"],
)


cc_binary(
    name = "subst",
    srcs = ["util/subst.c",],
)

genrule(
    name = "dirpaths.h",
    tools = [":subst"],
    srcs = ["lib/dirpaths.h.in", "util/subst.conf"],
    outs = ["lib/dirpaths.h"],
    cmd = """
            $(location :subst) -f $(location util/subst.conf) $(location lib/dirpaths.h.in) $@
          """,
)


