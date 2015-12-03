package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

pkg_libs([":readline", ":history"])
pkg_exes()

EXTERNAL_HDRS = [
        "readline.h",
        "chardefs.h",
        "keymaps.h",
        "history.h",
        "tilde.h",
        "rlstdc.h",
        "rlconf.h",
        "rltypedefs.h",
        ":hdrs_subdir",
]

INTERNAL_HDRS = glob(["**/*.h"], EXTERNAL_HDRS)

genrule(
    name = "hdrs_subdir",
    srcs = [
        "readline.h",
        "chardefs.h",
        "keymaps.h",
        "history.h",
        "tilde.h",
        "rlstdc.h",
        "rlconf.h",
        "rltypedefs.h",
    ],
    outs = [
        "readline/readline.h",
        "readline/chardefs.h",
        "readline/keymaps.h",
        "readline/history.h",
        "readline/tilde.h",
        "readline/rlstdc.h",
        "readline/rlconf.h",
        "readline/rltypedefs.h",
    ],
    cmd = """
     cp   $(location readline.h)    $(location readline/readline.h)
     cp   $(location chardefs.h)    $(location readline/chardefs.h)
     cp   $(location keymaps.h)     $(location readline/keymaps.h)
     cp   $(location history.h)     $(location readline/history.h)
     cp   $(location tilde.h)       $(location readline/tilde.h)
     cp   $(location rlstdc.h)      $(location readline/rlstdc.h)
     cp   $(location rlconf.h)      $(location readline/rlconf.h)
     cp   $(location rltypedefs.h)  $(location readline/rltypedefs.h)
    """
)

# cc_library(
#     name = "rl",
#     hdrs = [":hdrs_subdir"],
#     deps = [":readline", ":history"],
# )

cc_library(
  name = "readline",
  srcs = [
        "readline.c",
        "vi_mode.c",
        "funmap.c",
        "keymaps.c",
        "parens.c",
        "search.c",
        "rltty.c",
        "complete.c",
        "bind.c",
        "isearch.c",
        "display.c",
        "signals.c",
        "util.c",
        "kill.c",
        "undo.c",
        "macro.c",
        "input.c",
        "callback.c",
        "terminal.c",
        "text.c",
        "nls.c",
        "misc.c",
        "compat.c",
        "xmalloc.c",
        "history.c",
        "histexpand.c",
        "histfile.c",
        "histsearch.c",
        "shell.c",
        "mbutil.c",
        ] + INTERNAL_HDRS,
  hdrs = EXTERNAL_HDRS + ["vi_keymap.c", "emacs_keymap.c"],
  includes = ["."],
  copts = ["-DHAVE_CONFIG_H", '-DRL_LIBRARY_VERSION=\\"5.2\\"'],
  deps = [
            "//external:ncurses-latest",
            ":tilde",
         ],
)

cc_library(
    name = "tilde",
    srcs = ["tilde.c"] + INTERNAL_HDRS,
    hdrs = EXTERNAL_HDRS,
    copts = ["-DHAVE_CONFIG_H", "-DREADLINE_LIBRARY"],
  includes = ["."],
)

cc_library(
  name = "history",
  srcs = [
        "xmalloc.c",
        "history.c",
        "histexpand.c",
        "histfile.c",
        "histsearch.c",
        "shell.c",
        "mbutil.c",
        ] + INTERNAL_HDRS,
  includes = ["."],
  hdrs = EXTERNAL_HDRS,
  copts = ["-DHAVE_CONFIG_H", '-DRL_LIBRARY_VERSION=\\"5.2\\"'],
)


