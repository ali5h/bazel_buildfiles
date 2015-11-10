package(default_visibility = ["//visibility:public"])


EXTERNAL_HDRS = [
            "include/hmac-md5.h",
            "include/md5global.h",
            "include/md5.h",
            "include/prop.h",
            "include/sasl.h",
            "include/saslplug.h",
            "include/saslutil.h",
                ]
INTERNAL_HDRS = glob(["**/*.h"], EXTERNAL_HDRS)

cc_library(
    name = "sasl2",
    srcs = INTERNAL_HDRS + [
    
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
    hdrs = EXTERNAL_HDRS,
    includes = [".", "include"],
    copts = ["-DHAVE_CONFIG_H"],
)

