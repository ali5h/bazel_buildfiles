package(default_visibility = ["//visibility:public"])

cc_library(
    name = "libevent",
    hdrs = ["event.h", "evhttp.h", "evdns.h", "evrpc.h", "evutil.h", ":event-config.h"],
    deps = [":event", "event_core", ":event_extra"],
)

cc_library(
  name = "event",
  srcs = [
    "event.c",
    "buffer.c",
    "evbuffer.c",
    "log.c",
    "evutil.c",
    "event_tagging.c",
    "http.c",
    "evhttp.h",
    "http-internal.h",
    "evdns.c",
    "evdns.h",
    "evrpc.c",
    "evrpc.h",
    "evrpc-internal.h",
    "strlcpy.c",
    "strlcpy-internal.h",
    ":event-config.h",
    "config.h",
    ],
    includes = ["."],
    copts = ['-DHAVE_CONFIG_H',],
)

cc_library(
    name = "event_core",
    srcs = [
    "event.c",
    "buffer.c",
    "evbuffer.c",
    "log.c",
    "evutil.c",
    ":event-config.h",
    "config.h",
    ],
    includes = ["."],
    copts = ['-DHAVE_CONFIG_H',],
)

cc_library(
    name = "event_extra",
    srcs = [
    "event_tagging.c",
    "http.c",
    "evdns.c",
    "evrpc.c",
    "strlcpy.c",
    ":event-config.h",
    "config.h",
    ],
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
