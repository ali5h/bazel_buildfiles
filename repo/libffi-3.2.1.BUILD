package(default_visibility = ["//visibility:public"])

pkg_libs([":ffi"])
pkg_exes()

cc_library(
  name = "ffi",
  srcs = [
            "src/prep_cif.c",
            "src/types.c",
            "src/raw_api.c",
            "src/java_raw_api.c",
            "src/closures.c",
            "x86_64-unknown-linux-gnu/fficonfig.h",
            "include/ffi_common.h",
            "x86_64-unknown-linux-gnu/include/ffi.h",
            "x86_64-unknown-linux-gnu/include/ffitarget.h",

         ],
  hdrs = ["src/dlmalloc.c"],
  includes = ["include", "x86_64-unknown-linux-gnu/include", "x86_64-unknown-linux-gnu"],
)
