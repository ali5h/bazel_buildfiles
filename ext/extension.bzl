# load("/tools/build_defs/pkg/pkg", "pkg_tar")

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

def add_package_http(url , tmp_name, alias, sha256):
    native.new_http_archive(
        # name = abs_path.split('/')[-1:][0],
        name = tmp_name,
        strip_prefix = tmp_name,
        url = url,
        sha256 = sha256,
        # build_file = 'repo/' + abs_path.split('/')[-1:][0] + '.BUILD',
        build_file = 'repo/' + tmp_name + '.BUILD',
    )
    native.bind(
        name = alias + '-hdr-latest',
        # actual = '@' + abs_path.split('/')[-1:][0] + '//:dep_libs',
        actual = '@' + tmp_name+ '//:dep_libs',
    )
    native.bind(
        name = alias + '-so-latest',
        # actual = '@' + abs_path.split('/')[-1:][0] + '//:libs',
        actual = '@' + tmp_name+ '//:libs',
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
