package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

pkg_outs(
        libs = ["libc-client.so"],
        )

genrule(
    local = 1,
    name = "local_build",
    srcs = [
            "//external:openssl-so-latest",
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
