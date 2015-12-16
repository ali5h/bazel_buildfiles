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

# ------------for build file---------------------

def pkg_libs(srcs = [], ext_hdrs = [], inc_dir = ""):
    # pkg_tar(
    #     name = 'hdrs',
    # #   ext_hdrs will all be put in the top level of .tgz, no subdir exist
    #     files = ext_hdrs,
    #     extension = "tar.gz",
    #     package_dir = REPOSITORY_NAME[1:],
    #     package_dir = inc_dir,
    # )
    native.filegroup(
        name = 'libs',
        srcs = srcs,
    )
    native.cc_library(
        name = 'dep_libs',
        hdrs = ext_hdrs,
        includes = ["."],
    )

def pkg_exes(srcs = []):
    native.filegroup(
        name = 'exes',
        srcs = srcs,
    )

def pkg_outs():
    native.filegroup(
        name = 'outs',
        srcs = [":libs", ":exes"],
    )
