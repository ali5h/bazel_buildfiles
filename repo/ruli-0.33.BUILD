package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

ALL_HDRS = glob(["**/*.h"])
EXTERNAL_HDRS = [
            "ruli_addr.h",
            "ruli_getaddrinfo.h",
            "ruli_http.h",
            "ruli_list.h",
            "ruli_oop.h",
            "ruli_res.h",
            "ruli_sock.h",
            "ruli_txt.h",
            "ruli_conf.h",
            "ruli.h",
            "ruli_isaac.h",
            "ruli_mem.h",
            "ruli_parse.h",
            "ruli_search.h",
            "ruli_srv.h",
            "ruli_util.h",
            "ruli_fsm.h",
            "ruli_host.h",
            "ruli_limits.h",
            "ruli_msg.h",
            "ruli_rand.h",
            "ruli_smtp.h",
            "ruli_sync.h",

]
pkg_outs(
            libs = ["libruli.so"],
            hdrs = EXTERNAL_HDRS,
            )

genrule(
    name = "mv_hdrs",
    srcs = [
            "src/ruli_addr.h",
            "src/ruli_getaddrinfo.h",
            "src/ruli_http.h",
            "src/ruli_list.h",
            "src/ruli_oop.h",
            "src/ruli_res.h",
            "src/ruli_sock.h",
            "src/ruli_txt.h",
            "src/ruli_conf.h",
            "src/ruli.h",
            "src/ruli_isaac.h",
            "src/ruli_mem.h",
            "src/ruli_parse.h",
            "src/ruli_search.h",
            "src/ruli_srv.h",
            "src/ruli_util.h",
            "src/ruli_fsm.h",
            "src/ruli_host.h",
            "src/ruli_limits.h",
            "src/ruli_msg.h",
            "src/ruli_rand.h",
            "src/ruli_smtp.h",
            "src/ruli_sync.h",
            ],
    outs = [
    
            "ruli_addr.h",
            "ruli_getaddrinfo.h",
            "ruli_http.h",
            "ruli_list.h",
            "ruli_oop.h",
            "ruli_res.h",
            "ruli_sock.h",
            "ruli_txt.h",
            "ruli_conf.h",
            "ruli.h",
            "ruli_isaac.h",
            "ruli_mem.h",
            "ruli_parse.h",
            "ruli_search.h",
            "ruli_srv.h",
            "ruli_util.h",
            "ruli_fsm.h",
            "ruli_host.h",
            "ruli_limits.h",
            "ruli_msg.h",
            "ruli_rand.h",
            "ruli_smtp.h",
            "ruli_sync.h",

    ],
    cmd = """

        cp    $(location src/ruli_addr.h)          $(location ruli_addr.h)
        cp    $(location src/ruli_getaddrinfo.h)   $(location ruli_getaddrinfo.h)
        cp    $(location src/ruli_http.h)          $(location ruli_http.h)
        cp    $(location src/ruli_list.h)          $(location ruli_list.h)
        cp    $(location src/ruli_oop.h)           $(location ruli_oop.h)
        cp    $(location src/ruli_res.h)           $(location ruli_res.h)
        cp    $(location src/ruli_sock.h)          $(location ruli_sock.h)
        cp    $(location src/ruli_txt.h)           $(location ruli_txt.h)
        cp    $(location src/ruli_conf.h)          $(location ruli_conf.h)
        cp    $(location src/ruli.h)               $(location ruli.h)
        cp    $(location src/ruli_isaac.h)         $(location ruli_isaac.h)
        cp    $(location src/ruli_mem.h)           $(location ruli_mem.h)
        cp    $(location src/ruli_parse.h)         $(location ruli_parse.h)
        cp    $(location src/ruli_search.h)        $(location ruli_search.h)
        cp    $(location src/ruli_srv.h)           $(location ruli_srv.h)
        cp    $(location src/ruli_util.h)          $(location ruli_util.h)
        cp    $(location src/ruli_fsm.h)           $(location ruli_fsm.h)
        cp    $(location src/ruli_host.h)          $(location ruli_host.h)
        cp    $(location src/ruli_limits.h)        $(location ruli_limits.h)
        cp    $(location src/ruli_msg.h)           $(location ruli_msg.h)
        cp    $(location src/ruli_rand.h)          $(location ruli_rand.h)
        cp    $(location src/ruli_smtp.h)          $(location ruli_smtp.h)
        cp    $(location src/ruli_sync.h)          $(location ruli_sync.h)

    """,
)

cc_binary(
    linkshared = 1,
    name = "libruli.so",
    srcs = ALL_HDRS + [
            "src/ruli_isaac.c",
            "src/ruli_mem.c",
            "src/ruli_rand.c",
            "src/ruli_util.c",
            "src/ruli_list.c",
            "src/ruli_addr.c",
            "src/ruli_sock.c",
            "src/ruli_txt.c",
            "src/ruli_msg.c",
            "src/ruli_fsm.c",
            "src/ruli_res.c",
            "src/ruli_parse.c",
            "src/ruli_host.c",
            "src/ruli_srv.c",
            "src/ruli_conf.c",
            "src/ruli_search.c",
            "src/ruli_http.c",
            "src/ruli_smtp.c",
            "src/ruli_sync.c",
            "src/ruli_getaddrinfo.c",

            "//external:liboop-so-latest",
    ],
    includes = ["src"],
    copts = ["-pipe", "-fPIC", "-shared", "-D_REENTRANT"],
    deps = ["//external:liboop-hdr-latest"],
)

