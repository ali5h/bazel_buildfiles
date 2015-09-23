# can be reference by //external:zlib-latest
bind(
    name = "zlib-latest",
    actual = "@zlib//:zlib",
)
new_local_repository(
    name = "zlib",
    path = "/root/NasX86/SysLib/zlib-1.2.8",
    build_file = "repo/zlib/BUILD",
)

bind(
    name = "popt-latest",
    actual = "@popt//:popt",
)
new_local_repository(
    name = "popt",
    path = "/root/NasX86/SysLib/popt-1.14",
    build_file = "repo/popt/BUILD",
)

new_local_repository(
    name = "libid3tag",
    path = "/root/NasX86/SysLib/libid3tag-0.15.1b",
    build_file = "repo/libid3tag/BUILD",
)
