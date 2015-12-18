package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

EXTERNAL_HDRS = []

pkg_outs(
            exes = ["crasher"],
            libs = ["libbacktrace.so"],
            hdrs = EXTERNAL_HDRS,
            )

cc_binary(
  linkshared = 1,
  name = "libbacktrace.so",
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
