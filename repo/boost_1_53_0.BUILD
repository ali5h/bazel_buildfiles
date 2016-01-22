package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = glob(["boost/**/*.h", "boost/**/*.hpp", "boost/**/*.ipp"])

pkg_outs(
            libs = ["libboost_filesystem.so", "libboost_system.so", "libboost_serialization.so"],
            hdrs = EXTERNAL_HDRS,
            )


qnap_cc_library(
    name = "libboost_filesystem.so",
    srcs = glob(["libs/filesystem/src/*"]),
    deps = ["special_ext"],
)

qnap_cc_library(
    name = "libboost_serialization.so",
    srcs = glob(["libs/serialization/src/*.cpp"]),
    deps = ["special_ext"],
)

cc_library(
    name = "special_ext",
    hdrs = glob(["boost/**/*.ipp"]) + ["libs/serialization/src/basic_xml_grammar.ipp"],
)

qnap_cc_library(
    name = "libboost_system.so",
    srcs = glob(["libs/system/src/*"]),
)
