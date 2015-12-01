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

#   native.bind(
#     name = name + '-latest',
#     actual = '@' + name + '//:' + lib_name,
#   )

# def deb_library(name, srcs, hdrs):
#     native.cc_library(
#         name = name,
#         srcs = srcs,
#         hdrs = hdrs,
#         includes = ['usr/include',],
#         visibility = ["//visibility:public"],
#         # deps = deps,
#     )
    
# ------------for build file---------------------

def pkg_libs(srcs = []):
    native.filegroup(
        name = 'libs',
        srcs = srcs,
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
