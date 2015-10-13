package(default_visibility = ["//visibility:public"])

cc_library(
  name = "ffi",
  srcs = [
            "src/prep_cif.c",
            "src/types.c",
            "src/raw_api.c",
            "src/java_raw_api.c",
            "src/closures.c",
            "x86_64-unknown-linux-gnu/fficonfig.h",
         ],
  hdrs = ["x86_64-unknown-linux-gnu/include"],
  includes = ["x86_64-unknown-linux-gnu", "x86_64-unknown-linux-gnu/include", "include"],
)
