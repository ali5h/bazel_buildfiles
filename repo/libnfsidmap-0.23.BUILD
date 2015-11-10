package(default_visibility = ["//visibility:public"])

INTERNAL_HDRS = [
                "cfg.h",
                "queue.h",
                "nfsidmap_internal.h",
            ]

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
        ] + INTERNAL_HDRS,
    hdrs = ["nfsidmap.h"],
)


cc_binary(
    name = "nsswitch.so",
    srcs = ["nss.c","nfsidmap.h"] + INTERNAL_HDRS,
    linkshared = 1,
)

cc_binary(
    name = "static.so",
    srcs = ["static.c", "nfsidmap.h"] + INTERNAL_HDRS,
    linkshared = 1,
)

cc_binary(
  name = "umich_ldap.so",
  srcs = ["umich_ldap.c",],
  linkshared = 1,
)
