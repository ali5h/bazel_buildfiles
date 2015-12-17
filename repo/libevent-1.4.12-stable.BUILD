package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs")

ALL_HDRS = glob(["**/*.h"])
EXTERNAL_HDRS = [ 
            "event.h",
            "evhttp.h",
            "evdns.h",
            "evrpc.h",
            "evutil.h",
            ":event-config.h"
]

pkg_outs(
            libs = ["libevent.so", "libevent_core.so", "libevent_extra.so"],
            hdrs = EXTERNAL_HDRS,
            )

cc_binary(
        linkshared = 1,
        name = "libevent.so",
        srcs = [
                "event.c",
                "buffer.c",
                "evbuffer.c",
                "log.c",
                "evutil.c",
                "event_tagging.c",
                "http.c",
                "evdns.c",
                "evrpc.c",
                "strlcpy.c",
        ] + ALL_HDRS + [":event-config.h"],
        includes = ["."],
        copts = ['-DHAVE_CONFIG_H',],
)

cc_binary(
        linkshared = 1,
        name = "libevent_core.so",
        srcs = [
                "event.c",
                "buffer.c",
                "evbuffer.c",
                "log.c",
                "evutil.c",
        ] + ALL_HDRS + [":event-config.h"],
        includes = ["."],
        copts = ['-DHAVE_CONFIG_H',],
)

cc_binary(
        linkshared = 1,
        name = "libevent_extra.so",
        srcs = [
                "event_tagging.c",
                "http.c",
                "evdns.c",
                "evrpc.c",
                "strlcpy.c",
        ] + ALL_HDRS + [":event-config.h"],
        includes = ["."],
        copts = ['-DHAVE_CONFIG_H',],
)

genrule(
    name = "event-config",
    srcs = ["config.h"],
    outs = ["event-config.h"],
    cmd = """
            echo '/* event-config.h' > $@
            echo ' * Generated by autoconf; post-processed by libevent.' >> $@
            echo ' * Do not edit this file.' >> $@
            echo ' * Do not rely on macros in this file existing in later versions.'>> $@
            echo ' */' >> $@
            echo '#ifndef _EVENT_CONFIG_H_' >> $@
            echo '#define _EVENT_CONFIG_H_' >> $@
            sed -e 's/#define /#define _EVENT_/' -e 's/#undef /#undef _EVENT_/' -e 's/#ifndef /#ifndef _EVENT_/' < $< >> $@
            echo '#endif' >> $@
          """,
)
