package(default_visibility = ["//visibility:public"])

cc_library(
  name = "event-1.4",
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
  copts = [
    '-DHAVE_CONFIG_H',
  ],
)


genrule(
    name = "event-config",
    srcs = ["config.h"],
    outs = ["event-config.h"],
    cmd = '\n'.join([
                     "echo '#ifndef _EVENT_CONFIG_H_' >> $@",
                     "echo '#define _EVENT_CONFIG_H_' >> $@",
                     "sed -e 's/#define /#define _EVENT_/' -e 's/#undef /#undef _EVENT_/' -e 's/#ifndef /#ifndef _EVENT_/' < $< >> $@",
                     "echo '#endif' >> $@",
                     ]),
)
