package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs")

EXTERNAL_HDRS = ["nfsidmap.h"]

ALL_HDRS = pkg_outs(
            libs = ["libnfsidmap.so", "nsswitch.so", "static.so", "umich_ldap.so"],
            hdrs = EXTERNAL_HDRS,
            )

cc_binary(
    linkshared = 1, 
    name = "libnfsidmap.so",
    srcs = [
        "libnfsidmap.c",
        "cfg.c",
        "strlcpy.c",
        ] + ALL_HDRS,
)


cc_binary(
    name = "nsswitch.so",
    srcs = ["nss.c"] + ALL_HDRS,
    linkshared = 1,
)

cc_binary(
    name = "static.so",
    srcs = ["static.c"] + ALL_HDRS,
    linkshared = 1,
)

cc_binary(
  name = "umich_ldap.so",
  srcs = ["umich_ldap.c",],
  linkshared = 1,
)
