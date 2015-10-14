package(default_visibility = ["//visibility:public"])

cc_library(
  name = "aio",
  srcs = glob(["src/*.c"]) +
         ["src/vsys_def.h"],
  hdrs = ["src/libaio.h"],
  # FIX: need to remove this one probably by genrule
  linkopts = ["-Wl,--version-script=/root/NasX86/SysLib/libaio-0.3.109/src/libaio.map"],
  includes = ["src"],
)
