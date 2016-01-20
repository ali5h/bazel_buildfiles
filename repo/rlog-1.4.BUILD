package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library")

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

qnap_cc_library(
    name = "librlog.so",
    srcs = [
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
    copts = [
        '-DRLOG_COMPONENT=\\"rlog\\"',
        '-DUSE_VALGRIND=0',
    ],
)
