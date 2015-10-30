package(default_visibility = ["//visibility:public"])

cc_library(
    name = "nl",
    srcs = glob(["lib/**/*.c"]),
    includes = ["include"],
    copts = ["-shared", "-D_GNU_SOURCE"],
)

