package(default_visibility = ["//visibility:public"])

EXTERNAL_HDRS = glob(["boost/**/*.h", "boost/**/*.hpp", "boost/**/*.ipp"])
INTERNAL_HDRS = glob(["**/*.h"], EXTERNAL_HDRS)

cc_library(
    name = "boost",
    includes = ["."],
    deps = [
            ":boost_filesystem",
            ":boost_serialization",
            ":boost_system",
            ],
)


cc_library(
    name = "boost_filesystem",
    srcs = glob(["libs/filesystem/src/*"]),
    hdrs = EXTERNAL_HDRS,
    includes = ["."],
)

cc_library(
    name = "boost_serialization",
    srcs = glob(["libs/serialization/src/*.cpp"]),
    hdrs = EXTERNAL_HDRS + ["libs/serialization/src/basic_xml_grammar.ipp"],
    includes = ["."],
)

cc_library(
    name = "boost_system",
    srcs = glob(["libs/system/src/*"]),
    hdrs = EXTERNAL_HDRS,
    includes = ["."],
)
