package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()
pkg_libs(["libc-client.so"])
pkg_exes()

genrule(
    local = 1,
    name = "local_build",
    srcs = [
            # FIX: should use openssl-latest but will fail in this case
            "@openssl-1.0.2e//:outs",
            ],
    outs = [
            "libc-client.so",
    ],
    cmd = """
        ln -sf $$PWD/$(GENDIR)/external/openssl-1.0.2e $$PWD/external/openssl-1.0.2e/lib
        (cd external/""" + REPOSITORY_NAME[1:] +""" &&
        make CC=$(CC) AR=$(AR) NM=$(NM) STRIP=$(STRIP) OBJCOPY=$(OBJCOPY) slx SSLDIR=$$PWD/../openssl-1.0.2e)
        cp external/imap-2007e/c-client/libc-client.so $(location libc-client.so)
    """,
)
