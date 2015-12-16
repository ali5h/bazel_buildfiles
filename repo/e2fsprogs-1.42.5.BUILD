package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")

ALL_HDRS = glob(["**/*.h"])
EXTERNAL_HDRS = ["com_err.h"]
pkg_outs()
pkg_libs(["libcom_err.so"], EXTERNAL_HDRS)
pkg_exes()

cc_binary(
    linkshared = 1,
    name = "libcom_err.so",
    srcs = ALL_HDRS + [
        "lib/et/error_message.c",
        "lib/et/et_name.c",
        "lib/et/init_et.c",
        "lib/et/com_err.c",
        "lib/et/com_right.c",
        ":lib/dirpaths.h",
        ],
    includes = ["lib", "lib/et"],
)

genrule(
    name = "com_err",
    srcs = ["lib/et/com_err.h"],
    outs = ["com_err.h"],
    cmd = "cat $< > $@",
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


