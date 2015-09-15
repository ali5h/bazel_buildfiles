package(default_visibility = ["//visibility:public"])


cc_library(
  name = "zlib-1.2.8",
  srcs = glob(["zlib-1.2.8/*.c"]),
  hdrs = glob(["zlib-1.2.8/*.h"]) + select({
                                            ":arm":["arm.ccc"],
                                            }),
  copts = [
    "-Wno-unused-variable",
    "-Wno-implicit-function-declaration",
  ],
)

config_setting(
    name = "arm",
    values = {
        "cpu": "armeabi-v7a",
        "crosstool_top": "//tools:toolchain",
        "host_crosstool_top": "//tools/cpp:toolchain",
    },
)
config_setting(
    name = "i686",
    values = {
        "cpu": "i686",
        "crosstool_top": "//tools:toolchain",
        "host_crosstool_top": "//tools/cpp:toolchain",
    },
)
config_setting(
    name = "x86_64",
    values = {
        "cpu": "x86_64",
        "crosstool_top": "//tools:toolchain",
        "host_crosstool_top": "//tools/cpp:toolchain",
    },
)
