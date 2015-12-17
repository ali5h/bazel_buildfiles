package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

ALL_HDRS = glob(["**/*.h"])
EXTERNAL_HDRS = [
        "jerror.h",
        "jmorecfg.h",
        "jpeglib.h",
        "jconfig.h",
        ]

pkg_outs(
        libs = ["libjpeg.so"],
        hdrs = EXTERNAL_HDRS,
        )

cc_binary(
        linkshared = 1,
        name = "libjpeg.so",
        srcs = ALL_HDRS + [
            "jcapimin.c",
            "jcapistd.c",
            "jccoefct.c",
            "jccolor.c",
            "jcdctmgr.c",
            "jchuff.c",
            "jcinit.c",
            "jcmainct.c",
            "jcmarker.c",
            "jcmaster.c",
            "jcomapi.c",
            "jcparam.c",
            "jcphuff.c",
            "jcprepct.c",
            "jcsample.c",
            "jctrans.c",
            "jdapimin.c",
            "jdapistd.c",
            "jdatadst.c",
            "jdatasrc.c",
            "jdcoefct.c",
            "jdcolor.c",
            "jddctmgr.c",
            "jdhuff.c",
            "jdinput.c",
            "jdmainct.c",
            "jdmarker.c",
            "jdmaster.c",
            "jdmerge.c",
            "jdphuff.c",
            "jdpostct.c",
            "jdsample.c",
            "jdtrans.c",
            "jerror.c",
            "jfdctflt.c",
            "jfdctfst.c",
            "jfdctint.c",
            "jidctflt.c",
            "jidctfst.c",
            "jidctint.c",
            "jidctred.c",
            "jquant1.c",
            "jquant2.c",
            "jutils.c",
            "jmemmgr.c",
        ],
        includes = ["."],
)
