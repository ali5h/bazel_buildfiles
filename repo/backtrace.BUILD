package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

pkg_libs([":backtrace"])
pkg_exes([":crasher"])

filegroup(
    name = "backtrace_tools",
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
