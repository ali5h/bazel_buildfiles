
def add_package(dir , alias, name):
    native.new_local_repository(
        name = name,
        path = '/root/NasX86/' + dir + '/' + name,
        build_file = 'repo/' + name + '.BUILD',
    )
    native.bind(
        name = alias + '-latest',
        actual = '@' + name + '//:dep_libs',
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
