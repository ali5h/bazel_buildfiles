package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = ["nfsidmap.h"]

pkg_outs(
            libs = ["libnfsidmap.so", "nsswitch.so", "static.so", "umich_ldap.so"],
            hdrs = EXTERNAL_HDRS,
            )

ALL_HDRS = glob(["**/*.h"])

cc_binary(
    linkshared = 1,
    name = "libnfsidmap.so",
    srcs = ALL_HDRS + [
        "libnfsidmap.c",
        "cfg.c",
        "strlcpy.c",
        ],
)


cc_binary(
    linkshared = 1,
    name = "nsswitch.so",
    srcs = ["nss.c"] + ALL_HDRS,
)

cc_binary(
    linkshared = 1,
    name = "static.so",
    srcs = ["static.c"] + ALL_HDRS,
)

cc_binary(
    linkshared = 1,
    name = "umich_ldap.so",
    srcs = ["umich_ldap.c",] + ALL_HDRS,
)
