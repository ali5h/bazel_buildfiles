package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = ["nfsidmap.h"]

pkg_outs(
            libs = ["libnfsidmap.so", "nsswitch.so", "static.so", "umich_ldap.so"],
            hdrs = EXTERNAL_HDRS,
            )

qnap_cc_library(
    name = "libnfsidmap.so",
    srcs = [
        "libnfsidmap.c",
        "cfg.c",
        "strlcpy.c",
        ],
)


qnap_cc_library(
    name = "nsswitch.so",
    srcs = ["nss.c"],
)

qnap_cc_library(
    name = "static.so",
    srcs = ["static.c"],
)

qnap_cc_library(
  name = "umich_ldap.so",
  srcs = ["umich_ldap.c",],
)
