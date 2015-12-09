package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

pkg_exes()

# EXTERNAL_HDRS = []

filegroup(
    name = 'libs',
    srcs = [
            "libc-client.so",
        ],
)

genrule(
    local = 1,
    name = "local_build",
    srcs = ["//external:openssl-latest", "@openssl-1.0.1p//:outs"],
    outs = [
            "libc-client.so",
    ],
    cmd = """
        ln -sf $$PWD/$(GENDIR)/external/openssl-1.0.1p $$PWD/external/openssl-1.0.1p/lib
        (cd external/imap-2007e &&
        make slx SSLDIR=$$PWD/../openssl-1.0.1p)
        cp external/imap-2007e/c-client/libc-client.so $(location libc-client.so)
    """,
)
