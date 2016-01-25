package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = [
	"src/base64.h",
	"src/encodings.h",
	"src/queue.h",
	"src/simplestring.h",
	"src/xml_element.h",
	"src/xml_to_xmlrpc.h",
	"src/xmlrpc.h",
	"src/xmlrpc_introspection.h",
]

pkg_outs(
            libs = ["libxmlrpc-epi.so"],
            hdrs = EXTERNAL_HDRS,
            )

qnap_cc_library(
        name = "libxmlrpc-epi.so",
        srcs = [
        "src/base64.c",
        "src/encodings.c",
        "src/queue.c",
        "src/simplestring.c",
        "src/xml_element.c",
        "src/xml_to_dandarpc.c",
        "src/xml_to_xmlrpc.c",
        "src/xml_to_soap.c",
        "src/xmlrpc.c",
        "src/xmlrpc_introspection.c",
        "src/system_methods.c",

        "//external:expat-so-latest",
        ],
        includes = ["src"],
        copts = [
        '-DPACKAGE_NAME=\\"\\"',
        '-DPACKAGE_TARNAME=\\"\\"',
        '-DPACKAGE_VERSION=\\"\\"',
        '-DPACKAGE_STRING=\\"\\"',
        '-DPACKAGE_BUGREPORT=\"\"',
        '-DPACKAGE=\\"xmlrpc\\"',
        '-DVERSION=\\"0.54.1\\"',
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
        '-DHAVE_EXPAT_H=1',
        '-DHAVE_LIBEXPAT=1',
        '-DSTDC_HEADERS=1',
        '-DHAVE_FCNTL_H=1',
        '-DHAVE_MALLOC_H=1',
        '-DHAVE_UNISTD_H=1',
        '-DHAVE_STDLIB_H=1',
        '-DHAVE_UNISTD_H=1',
        ],
        deps = [
                "//external:expat-hdr-latest",
                ],
)
