package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

EXTERNAL_HDRS = ["csv.h"]

ALL_HDRS = pkg_outs(
            libs = ["libcsv.so"],
            hdrs = EXTERNAL_HDRS,
            )


cc_binary(
    linkshared = 1,
    name = "libcsv.so",
    srcs = ["libcsv.c"] + ALL_HDRS,
    includes = ["."],
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

