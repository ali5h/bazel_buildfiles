package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

ALL_HDRS = glob(["**/*.h"])
EXTERNAL_HDRS = [
            "include/hmac-md5.h",
            "include/md5global.h",
            "include/md5.h",
            "include/prop.h",
            "include/sasl.h",
            "include/saslplug.h",
            "include/saslutil.h",
                ]

pkg_outs(
            libs = ["libsasl2.so"],
            hdrs = EXTERNAL_HDRS,
            )

cc_binary(
    linkshared = 1,
    name = "libsasl2.so",
    srcs = ALL_HDRS + [
    
            "lib/auxprop.c",
            "lib/canonusr.c",
            "lib/checkpw.c",
            "lib/client.c",
            "lib/common.c",
            "lib/config.c",
            "lib/external.c",
            "lib/md5.c",
            "lib/saslutil.c",
            "lib/server.c",
            "lib/seterror.c",
            "lib/dlopen.c",
            "plugins/plugin_common.c",

    ],
    includes = [".", "include"],
    copts = ["-DHAVE_CONFIG_H"],
)

