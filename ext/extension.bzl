
def add_package(abs_path , alias):
    native.new_local_repository(
        name = abs_path.split('/')[-1:][0],
        # path = '/root/NasX86/' + dir + '/' + name,
        path = abs_path,
        build_file = 'repo/' + abs_path.split('/')[-1:][0] + '.BUILD',
    )
    native.bind(
        name = alias + '-latest',
        actual = '@' + abs_path.split('/')[-1:][0] + '//:dep_libs',
    )

# ------------for build file---------------------

def pkg_libs(srcs = []):
    native.filegroup(
        name = 'libs',
        srcs = srcs,
    )
    native.cc_library(
        name = 'dep_libs',
        deps = srcs,
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
