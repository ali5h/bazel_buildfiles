def add_package_SysLib(name):
  native.new_local_repository(
    name = name,
    path = '/root/NasX86/SysLib/' + name,
    build_file = 'repo/' + name + '.BUILD',
  )

def add_package_SysUtil(name):
  native.new_local_repository(
    name = name,
    path = '/root/NasX86/SysUtil/' + name,
    build_file = 'repo/' + name + '.BUILD',
  )

def add_package_NasLib(name):
  native.new_local_repository(
    name = name,
    path = '/root/NasX86/NasLib/' + name,
    build_file = 'repo/' + name + '.BUILD',
  )
#   native.bind(
#     name = name + '-latest',
#     actual = '@' + name + '//:' + lib_name,
#   )

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
