package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = ["csv.h"]

pkg_outs(
            libs = ["libcsv.so"],
            hdrs = EXTERNAL_HDRS,
            )


qnap_cc_library(
    name = "libcsv.so",
    srcs = ["libcsv.c"],
    copts = [
    
                '-DPACKAGE_NAME=\\"libcsv\\"',
                '-DPACKAGE_TARNAME=\\"libcsv\\"',
                '-DPACKAGE_VERSION=\\"3.0.2\\"',
                '-DPACKAGE_STRING=\\"libcsv\\ 3.0.2\\"',
                '-DPACKAGE_BUGREPORT=\\"rgamble@users.sourceforge.net\\"',
                '-DPACKAGE_URL=\\"http://sourceforge.net/projects/libcsv/\\"',
                '-DPACKAGE=\\"libcsv\\"',
                '-DVERSION=\\"3.0.2\\"',
                '-DSTDC_HEADERS=1',
                '-DHAVE_SYS_TYPES_H=1',
                '-DHAVE_SYS_STAT_H=1',
                '-DHAVE_STDLIB_H=1',
                '-DHAVE_STRING_H=1',
                '-DHAVE_MEMORY_H=1',
                '-DHAVE_STRINGS_H=1',
                '-DHAVE_INTTYPES_H=1',
                '-DHAVE_STDINT_H=1',
                '-DHAVE_UNISTD_H=1',
                '-DHAVE_DLFCN_H=1',
                '-DLT_OBJDIR=\\".libs/\\"',

    ],
)

