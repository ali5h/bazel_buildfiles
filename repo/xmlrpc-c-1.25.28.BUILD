package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

EXTERNAL_HDRS = glob(["include/xmlrpc-c/*.h"]) +[":include/xmlrpc-c/config.h"]

ALL_HDRS = pkg_outs(
            libs = ["libxmlrpc.so", "libxmlrpc_xmltok.so", "libxmlrpc_xmlparse.so", "libxmlrpc_util.so"],
            hdrs = EXTERNAL_HDRS,
            )


INC = ["lib/util/include", "include", "lib/expat/xmlparse", "lib/expat/xmltok", "."]

cc_binary(
    linkshared = 1,
    name = "libxmlrpc_client.so",
    srcs = [

                "src/xmlrpc_client.c",
                "src/xmlrpc_client_global.c",
                "src/xmlrpc_server_info.c",

    ] + ALL_HDRS,
    includes = INC,
)

cc_binary(
    linkshared = 1,
    name = "libxmlrpc_util.so",
    srcs = [
                "lib/libutil/asprintf.c",
                "lib/libutil/base64.c",
                "lib/libutil/error.c",
                "lib/libutil/make_printable.c",
                "lib/libutil/memblock.c",
                "lib/libutil/select.c",
                "lib/libutil/sleep.c",
                "lib/libutil/string_number.c",
                "lib/libutil/time.c",
                "lib/libutil/utf8.c",
                ":include/xmlrpc-c/config.h",


    ] + ALL_HDRS,
    includes = INC,
)

cc_binary(
    linkshared = 1,
    name = "libxmlrpc_xmlparse.so",
    srcs = [
                    "lib/expat/xmlparse/xmlparse.c",
                    ] + ALL_HDRS,
    includes = INC,
)

cc_binary(
    name = "gennmtab",
    srcs = ["lib/expat/gennmtab/gennmtab.c"] + ALL_HDRS,
)

genrule(
    name = "nametab.h",
    outs = ["lib/expat/xmltok/nametab.h"],
    tools = ["gennmtab"],
    cmd = """
        $(location gennmtab) > $@
    """
)

cc_binary(
    linkshared = 1,
    name = "libxmlrpc_xmltok.so",
    srcs = [
    
                "lib/expat/xmltok/xmltok.c",
                "lib/expat/xmltok/xmlrole.c",
                ":lib/expat/xmltok/nametab.h",

    ] + ALL_HDRS,
    deps = ["special_ext"],
    includes = INC,
    copts = ["-DXML_BYTE_ORDER=0"],
)

cc_library(
    name = "special_ext",
    hdrs = [
                "lib/expat/xmltok/xmltok_impl.c",
                "lib/expat/xmltok/xmltok_ns.c",
            ],
)

cc_binary(
    linkshared = 1,
    name = "libxmlrpc.so",
    srcs = [
    
                "src/double.c",
                "src/json.c",
                "src/parse_datetime.c",
                "src/parse_value.c",
                "src/resource.c",
                "src/trace.c",
                "src/version.c",
                "src/xmlrpc_data.c",
                "src/xmlrpc_datetime.c",
                "src/xmlrpc_string.c",
                "src/xmlrpc_array.c",
                "src/xmlrpc_struct.c",
                "src/xmlrpc_build.c",
                "src/xmlrpc_decompose.c",
                "src/xmlrpc_parse.c",
                "src/xmlrpc_serialize.c",
                "src/xmlrpc_base64.c",
                "src/xmlrpc_expat.c",
                "src/xmlrpc_authcookie.c",
                ":include/xmlrpc-c/config.h",
                ":version.h",
    
    ] + ALL_HDRS,
    includes = INC,
    copts = ["-DHAVE_CONFIG_H"],
)

genrule(
    name = "version",
    outs = ["version.h"],
    cmd = """
                echo "/* Generated by make file rule */" >>$@
                echo '#define XMLRPC_C_VERSION \"1.25.28\"' >>$@
                echo "#define XMLRPC_VERSION_MAJOR 1" >>$@
                echo "#define XMLRPC_VERSION_MINOR 25" >>$@
                echo "#define XMLRPC_VERSION_POINT 28" >>$@
    """,
)

genrule(
    name = "config.h",
    outs = ["include/xmlrpc-c/config.h"],
    cmd = """

                                                                                 >$@
                echo "Lots of echoes to '' suppressed here ..."
                echo '#ifndef XMLRPC_C_CONFIG_H_INCLUDED'                        >>$@
                echo '#define XMLRPC_C_CONFIG_H_INCLUDED'                        >>$@
                echo ''                                                          >>$@
                echo '/* This file, part of XML-RPC For C/C++, is meant to '     >>$@
                echo '   define characteristics of this particular installation '>>$@ 
                echo '   that the other <xmlrpc-c/...> header files need in '    >>$@
                echo '   order to compile correctly when #included in Xmlrpc-c'  >>$@
                echo '   user code.'						                     >>$@
                echo ''                                                          >>$@
                echo '   Those header files #include this one.'                  >>$@
                echo ''                                                          >>$@
                echo '   This file was created by a make rule.'                  >>$@
                echo '*/'                                                        >>$@
                echo '#define XMLRPC_HAVE_WCHAR 1'                               >>$@
                echo '#ifdef WIN32'                                              >>$@
                echo '  /* SOCKET is a type defined by <winsock.h>.  Anyone who' >>$@
                echo '     uses XMLRPC_SOCKET on a WIN32 system must #include'   >>$@
                echo '     <winsock.h>'                                          >>$@
                echo '  */'                                                      >>$@
                echo '  #define XMLRPC_SOCKET SOCKET'                            >>$@
                echo '  #define XMLRPC_HAVE_TIMEVAL 0'                           >>$@
                echo '  #define XMLRPC_HAVE_TIMESPEC 0'                          >>$@
                echo '  #define XMLRPC_HAVE_PTHREAD 0'                           >>$@
                echo '#else'                                                     >>$@
                echo '  #define XMLRPC_SOCKET int'                               >>$@
                echo '  #define XMLRPC_HAVE_TIMEVAL 1'                           >>$@
                echo '  #define XMLRPC_HAVE_TIMESPEC 1'                          >>$@
                echo '  #define XMLRPC_HAVE_PTHREAD 1'                           >>$@
                echo '#endif'                                                    >>$@
                echo ''                                                          >>$@
                echo '#if defined(_MSC_VER)'                                     >>$@
                echo '  /* Newer MSVC has long long, but MSVC 6 does not */'     >>$@
                echo '  #define XMLRPC_INT64 __int64'				             >>$@
                echo '  #define XMLRPC_PRId64 "I64"'                             >>$@
                echo '  #define XMLRPC_INT32 __int32'				             >>$@
                echo '#else'							                         >>$@
                echo '  #define XMLRPC_INT64 long long'	                         >>$@
                echo '  #define XMLRPC_PRId64 "lld"'                             >>$@
                echo '  #define XMLRPC_INT32 int'		                         >>$@
                echo '#endif'                                                    >>$@
                echo '#endif'                                                    >>$@

    """

)
