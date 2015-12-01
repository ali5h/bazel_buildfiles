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

def deb_library(name, srcs, hdrs):
    native.cc_library(
        name = name,
        srcs = srcs,
        hdrs = hdrs,
        includes = ['usr/include',],
        visibility = ["//visibility:public"],
        # deps = deps,
    )
