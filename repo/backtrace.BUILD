package(default_visibility = ["//visibility:public"])

filegroup(
    name = "backtrace_tool",
    srcs = ["backtrace", "crasher",],
)

cc_library(
  name = "backtrace",
  srcs = ["backtrace.cxx"],
  copts = ["-Werror", "-D_GNU_SOURCE"],
  linkopts = ["-fPIC", "-shared"],
)

cc_binary(
  name = "crasher",
  srcs = ["crasher.cxx"],
  copts = ["-Werror", "-D_GNU_SOURCE"],
  linkopts = ["-lstdc++", "-fPIC", "-rdynamic"],
)
