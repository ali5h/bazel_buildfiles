package(default_visibility = ["//visibility:public"])

filegroup(
    name = "libnfsidmap",
    srcs = [
        ":nfsidmap",
        ":nsswitch.so",
        ":static.so",
        ":umich_ldap.so",
    ],
)

cc_library(
    name = "nfsidmap",
    srcs = [
        "libnfsidmap.c",
        "cfg.c",
        "strlcpy.c",
        "cfg.h",
        "nfsidmap_internal.h",
        "queue.h",
        ],
    hdrs = ["nfsidmap.h"],
)


cc_binary(
    name = "nsswitch.so",
    srcs = ["nss.c",],
    linkshared = 1,
)

cc_binary(
    name = "static.so",
    srcs = ["static.c",],
    linkshared = 1,
)

cc_binary(
  name = "umich_ldap.so",
  srcs = ["umich_ldap.c",],
  linkshared = 1,
)
