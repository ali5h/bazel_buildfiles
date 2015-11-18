package(default_visibility = ["//visibility:public"])

filegroup(
    name = "libcups",
    srcs = [
            "cups",
            "cupsmime",
            "cupsd",
            "lpadmin",
            "lpinfo",
            "lpstat",
            "lpmove",
            "lpoptions",
            "lp",
            "cancel",
            "lpq",
            "lpr",
            "lprm",
            "gziptoany",
    ],
)

OPTS = [
        '-D_CUPS_SOURCE',
        '-D_LARGEFILE_SOURCE',
        '-D_LARGEFILE64_SOURCE',
        '-D_THREAD_SAFE',
        '-D_REENTRANT',
        '-Wno-format-y2k',
        '-Wunused',
        '-fstack-protector',
        '-Wno-tautological-compare',
        '-D_GNU_SOURCE',
    ]

EXTERNAL_HDRS = [

        "cups/adminutil.h",
        "cups/array.h",
        "cups/backend.h",
        "cups/cups.h",
        "cups/dir.h",
        "cups/file.h",
        "cups/http.h",
        "cups/ipp.h",
        "cups/language.h",
        "cups/ppd.h",
        "cups/raster.h",
        "cups/sidechannel.h",
        "cups/transcode.h",
        "cups/versioning.h",

]
INTERNAL_HDRS = glob(["**/*.h"], EXTERNAL_HDRS)

cc_binary(
    name = "cupsd",
    srcs = [
            
		"scheduler/auth.c",
		"scheduler/banners.c",
		"scheduler/cert.c",
		"scheduler/classes.c",
		"scheduler/client.c",
		"scheduler/colorman.c",
		"scheduler/conf.c",
		"scheduler/dirsvc.c",
		"scheduler/env.c",
		"scheduler/file.c",
		"scheduler/main.c",
		"scheduler/ipp.c",
		"scheduler/listen.c",
		"scheduler/job.c",
		"scheduler/log.c",
		"scheduler/network.c",
		"scheduler/policy.c",
		"scheduler/printers.c",
		"scheduler/process.c",
		"scheduler/quotas.c",
		"scheduler/select.c",
		"scheduler/server.c",
		"scheduler/statbuf.c",
		"scheduler/subscriptions.c",
		"scheduler/sysman.c",
		"scheduler/tls.c",

    ] + INTERNAL_HDRS + EXTERNAL_HDRS,
    includes = ["."],
    copts = OPTS,
    linkopts = ["-lcrypt"],
    deps = [
        "//external:zlib-latest",
        ":cupsmime",
    ],
)

cc_binary(
    name = "cups-deviced",
    srcs = [
        "scheduler/cups-deviced.c",
        "scheduler/util.c",
            ] + INTERNAL_HDRS + EXTERNAL_HDRS,
    includes = ["."],
    copts = OPTS,
    deps = [
        "//external:zlib-latest",
        ":cups",
    ],
)

cc_binary(
    name = "cups-lpd",
    srcs = [
        "scheduler/cups-lpd.c",
            ] + INTERNAL_HDRS + EXTERNAL_HDRS,
    includes = ["."],
    copts = OPTS,
    deps = [
        ":cups",
    ],
)

cc_binary(
    name = "lpadmin",
    srcs = [
        "systemv/lpadmin.c",
            ] + INTERNAL_HDRS + EXTERNAL_HDRS,
    includes = ["."],
    copts = OPTS,
    deps = [
        "//external:zlib-latest",
        ":cups",
    ],
)

cc_binary(
    name = "lpinfo",
    srcs = [
        "systemv/lpinfo.c",
            ] + INTERNAL_HDRS + EXTERNAL_HDRS,
    includes = ["."],
    copts = OPTS,
    deps = [
        ":cups",
    ],
)

cc_binary(
    name = "lpstat",
    srcs = [
        "systemv/lpstat.c",
            ] + INTERNAL_HDRS + EXTERNAL_HDRS,
    includes = ["."],
    copts = OPTS,
    deps = [
        ":cups",
    ],
)

cc_binary(
    name = "lpmove",
    srcs = [
        "systemv/lpmove.c",
            ] + INTERNAL_HDRS + EXTERNAL_HDRS,
    includes = ["."],
    copts = OPTS,
    deps = [
        ":cups",
    ],
)

cc_binary(
    name = "lpoptions",
    srcs = [
        "systemv/lpoptions.c",
            ] + INTERNAL_HDRS + EXTERNAL_HDRS,
    includes = ["."],
    copts = OPTS,
    deps = [
        ":cups",
    ],
)

cc_binary(
    name = "lp",
    srcs = [
        "systemv/lp.c",
            ] + INTERNAL_HDRS + EXTERNAL_HDRS,
    includes = ["."],
    copts = OPTS,
    deps = [
        ":cups",
    ],
)

cc_binary(
    name = "lpq",
    srcs = [
        "berkeley/lpq.c",
            ] + INTERNAL_HDRS + EXTERNAL_HDRS,
    includes = ["."],
    copts = OPTS,
    deps = [
        ":cups",
    ],
)

cc_binary(
    name = "lpr",
    srcs = [
        "berkeley/lpr.c",
            ] + INTERNAL_HDRS + EXTERNAL_HDRS,
    includes = ["."],
    copts = OPTS,
    deps = [
        ":cups",
    ],
)

cc_binary(
    name = "lprm",
    srcs = [
        "berkeley/lprm.c",
            ] + INTERNAL_HDRS + EXTERNAL_HDRS,
    includes = ["."],
    copts = OPTS,
    deps = [
        ":cups",
    ],
)

cc_binary(
    name = "cancel",
    srcs = [
        "systemv/cancel.c",
            ] + INTERNAL_HDRS + EXTERNAL_HDRS,
    includes = ["."],
    copts = OPTS,
    deps = [
        ":cups",
    ],
)

cc_binary(
    name = "gziptoany",
    srcs = [
        "filter/gziptoany.c",
            ] + INTERNAL_HDRS + EXTERNAL_HDRS,
    includes = ["."],
    copts = OPTS,
    deps = [
        ":cups",
    ],
)

cc_library(
    name = "cups",
    srcs = [
    
		"cups/adminutil.c",
		"cups/array.c",
		"cups/attr.c",
		"cups/auth.c",
		"cups/backchannel.c",
		"cups/backend.c",
		"cups/conflicts.c",
		"cups/custom.c",
		"cups/debug.c",
		"cups/dest.c",
		"cups/dest-job.c",
		"cups/dest-localization.c",
		"cups/dest-options.c",
		"cups/dir.c",
		"cups/emit.c",
		"cups/encode.c",
		"cups/file.c",
		"cups/getdevices.c",
		"cups/getifaddrs.c",
		"cups/getputfile.c",
		"cups/globals.c",
		"cups/http.c",
		"cups/http-addr.c",
		"cups/http-addrlist.c",
		"cups/http-support.c",
		"cups/ipp.c",
		"cups/ipp-support.c",
		"cups/langprintf.c",
		"cups/language.c",
		"cups/localize.c",
		"cups/mark.c",
		"cups/md5.c",
		"cups/md5passwd.c",
		"cups/notify.c",
		"cups/options.c",
		"cups/page.c",
		"cups/ppd.c",
		"cups/ppd-cache.c",
		"cups/pwg-media.c",
		"cups/request.c",
		"cups/sidechannel.c",
		"cups/snmp.c",
		"cups/snprintf.c",
		"cups/string.c",
		"cups/tempfile.c",
		"cups/thread.c",
		"cups/transcode.c",
		"cups/usersys.c",
		"cups/util.c",

    ] + INTERNAL_HDRS,
    hdrs = EXTERNAL_HDRS,
    includes = ["."],
    copts = OPTS,
    linkopts = ["-pthread", "-lm"],
    deps = [
        "//external:zlib-latest",
    ],
)

cc_library(
    name = "cupsmime",
    srcs = [

		"scheduler/filter.c",
		"scheduler/mime.c",
		"scheduler/type.c",

        ] + INTERNAL_HDRS,
    hdrs = EXTERNAL_HDRS,
    includes = ["."],
    copts = OPTS,
    deps = [":cups"],
)
