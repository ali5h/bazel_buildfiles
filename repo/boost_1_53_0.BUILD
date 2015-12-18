package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

ALL_HDRS = glob(["**/*.h","boost/**/*.h", "boost/**/*.hpp"])
EXTERNAL_HDRS = glob(["boost/**/*.h", "boost/**/*.hpp", "boost/**/*.ipp"])

pkg_outs(
            libs = ["libboost_filesystem.so", "libboost_system.so", "libboost_serialization.so"],
            hdrs = EXTERNAL_HDRS,
            )


cc_binary(
    linkshared = 1,
    name = "libboost_filesystem.so",
    srcs = glob(["libs/filesystem/src/*"]) + ALL_HDRS,
    includes = ["."],
    deps = ["special_ext"],
)

cc_binary(
    linkshared = 1,
    name = "libboost_serialization.so",
    srcs = glob(["libs/serialization/src/*.cpp"]) + ALL_HDRS,
    includes = ["."],
    deps = ["special_ext"],
)

cc_library(
    name = "special_ext",
    hdrs = glob(["boost/**/*.ipp"]) + ["libs/serialization/src/basic_xml_grammar.ipp"],
)

cc_binary(
    linkshared = 1,
    name = "libboost_system.so",
    srcs = glob(["libs/system/src/*"]) + ALL_HDRS,
    includes = ["."],
)
