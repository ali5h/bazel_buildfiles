package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = [
    "x86_64-linux-gnu/ffi.h",
    "x86_64-linux-gnu/ffitarget.h",
]

pkg_outs(
            libs = ["libffi.so"],
            hdrs = EXTERNAL_HDRS,
            )

genrule(
    name = "mv_hdrs",
    srcs = [
            "x86_64-unknown-linux-gnu/include/ffi.h",
            "x86_64-unknown-linux-gnu/include/ffitarget.h",
            ],
    outs = EXTERNAL_HDRS,
    cmd = """
            cp -r $(location x86_64-unknown-linux-gnu/include/ffi.h)        $(location x86_64-linux-gnu/ffi.h)
            cp -r $(location x86_64-unknown-linux-gnu/include/ffitarget.h)  $(location x86_64-linux-gnu/ffitarget.h)
    """,
)

qnap_cc_library(
    name = "libffi.so",
    srcs = [
            "src/prep_cif.c",
            "src/types.c",
            "src/raw_api.c",
            "src/java_raw_api.c",
            "src/closures.c",
         ],
    includes = ["x86_64-unknown-linux-gnu/include", "x86_64-unknown-linux-gnu"],
    deps = ["special_ext"],
)

cc_library(
    name = "special_ext",
    hdrs = ["src/dlmalloc.c"],
)
