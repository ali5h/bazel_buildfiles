package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

ALL_HDRS = glob(["**/*.h"])
EXTERNAL_HDRS = [
        "rlog/common.h",
        "rlog/Error.h",
        "rlog/Lock.h",
        "rlog/Mutex.h",
        "rlog/rlog-c99.h",
        "rlog/RLogChannel.h",
        "rlog/rlog.h",
        "rlog/rloginit.h",
        "rlog/rloglocation.h",
        "rlog/RLogNode.h",
        "rlog/rlog-novariadic.h",
        "rlog/rlog-prec99.h",
        "rlog/RLogPublisher.h",
        "rlog/RLogTime.h",
        "rlog/StdioNode.h",
        "rlog/SyslogNode.h",
        ]

pkg_outs(
        libs = ["librlog.so"],
        hdrs = EXTERNAL_HDRS,
        )

cc_binary(
    linkshared = 1,
    name = "librlog.so",
    srcs = ALL_HDRS + [
        "rlog/rlog.cpp",
        "rlog/rloginit.cpp",
        "rlog/rloglocation.cpp",
        "rlog/Error.cpp",
        "rlog/RLogChannel.cpp",
        "rlog/RLogNode.cpp",
        "rlog/RLogPublisher.cpp",
        "rlog/RLogTime.cpp",
        "rlog/StdioNode.cpp",
        "rlog/SyslogNode.cpp",
    ],
    includes = ["."],
    copts = [
        '-DHAVE_CONFIG_H',
        '-DRLOG_COMPONENT=\\"rlog\\"',
        '-DUSE_VALGRIND=0',
    ],
)
