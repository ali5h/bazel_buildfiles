# load("/tools/build_defs/pkg/pkg", "pkg_tar")

REPO_ROOT = "/root/NasX86/"
SANDBOX_ROOT = "/root/sandbox/"

def add_package(abs_path , alias):
    native.new_local_repository(
        name = abs_path.split('/')[-1:][0],
        path = abs_path,
        build_file = 'repo/' + abs_path.split('/')[-1:][0] + '.BUILD',
    )
    native.bind(
        name = alias + '-hdr-latest',
        actual = '@' + abs_path.split('/')[-1:][0] + '//:dep_libs',
    )
    native.bind(
        name = alias + '-so-latest',
        actual = '@' + abs_path.split('/')[-1:][0] + '//:libs',
    )

def add_package_http(url , alias, sha256):
    native.new_http_archive(
        name = url.split('/')[-1:][0].rstrip(".tar.gz"),
        strip_prefix = url.split('/')[-1:][0].rstrip(".tar.gz"),
        url = url,
        sha256 = sha256,
        build_file = 'repo/' + url.split('/')[-1:][0].rstrip(".tar.gz") + '.BUILD',
    )
    native.bind(
        name = alias + '-hdr-latest',
        actual = '@' + url.split('/')[-1:][0].rstrip(".tar.gz") + '//:dep_libs',
    )
    native.bind(
        name = alias + '-so-latest',
        actual = '@' + url.split('/')[-1:][0].rstrip(".tar.gz") + '//:libs',
    )

# ------------for build file---------------------


def pkg_outs(exes = [], libs = [], hdrs = [], inc_dir = ""):
    # pkg_tar(
    #     name = 'hdrs',
    # #   hdrs will all be put in the top level of .tgz, no subdir exist
    #     files = hdrs,
    #     extension = "tar.gz",
    # #   package_dir = REPOSITORY_NAME[1:],
    #     package_dir = inc_dir,
    # )
    native.filegroup(
        name = 'libs',
        srcs = libs,
    )
    native.cc_library(
        name = 'dep_libs',
        hdrs = hdrs,
        includes = [".", "include"],
    )
    native.filegroup(
        name = 'exes',
        srcs = exes,
    )
    native.filegroup(
        name = 'outs',
        srcs = [":libs", ":exes"],
    )
    return  native.glob(["**/*.h"])

def qnap_cc_library( name="", deps = [], srcs =[] , copts = [], defines = [], includes = [], linkopts = [] ):
    native.cc_binary(
        name = name,
        deps = deps,
        srcs = srcs + native.glob(["**/*.h"]),
        copts = copts + ["-DHAVE_CONFIG_H"],
        defines = defines,
        includes = ["."] + includes + select({
                                                "//target:x86_64": ["qnap_cfg_inc/x86_64"],
                                                "//target:arm":    ["qnap_cfg_inc/arm"],
                                            }),
        linkopts = linkopts,
        linkshared = 1,
    )
