package(default_visibility = ["//visibility:public"])

EXTERNAL_HDRS = glob(["include/xmlrpc-c/*.h"])
INTERNAL_HDRS = glob(["**/*.h"], EXTERNAL_HDRS+["Windows/*.h"])

cc_library(
    name = "xmlrpc",
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
    
    ] + INTERNAL_HDRS,
    hdrs = EXTERNAL_HDRS,
    # includes = [],
    copts = ["-DHAVE_CONFIG_H"],
)

# cc_library(
#     name = "",
#     srcs = [] + INTERNAL_HDRS,
#     hdrs = EXTERNAL_HDRS,
#     includes = [],
#     copts = [],
# )
# cc_library(
#     name = "",
#     srcs = [] + INTERNAL_HDRS,
#     hdrs = EXTERNAL_HDRS,
#     includes = [],
#     copts = [],
# )
# cc_library(
#     name = "",
#     srcs = [] + INTERNAL_HDRS,
#     hdrs = EXTERNAL_HDRS,
#     includes = [],
#     copts = [],
# )
# cc_library(
#     name = "",
#     srcs = [] + INTERNAL_HDRS,
#     hdrs = EXTERNAL_HDRS,
#     includes = [],
#     copts = [],
# )
