#load("extension", "add_package")

# can be reference by //external:zlib-latest
bind(
    name = "zlib-latest",
    actual = "@zlib//:z",
)
new_local_repository(
    name = "zlib-1.2.8",
    path = "/root/NasX86/SysLib/zlib-1.2.8",
    build_file = "repo/zlib-1.2.8.BUILD",
)

bind(
    name = "popt-latest",
    actual = "@popt//:popt",
)
new_local_repository(
    name = "popt-1.14",
    path = "/root/NasX86/SysLib/popt-1.14",
    build_file = "repo/popt-1.14.BUILD",
)

new_local_repository(
    name = "libid3tag-0.15.1b",
    path = "/root/NasX86/SysLib/libid3tag-0.15.1b",
    build_file = "repo/libid3tag-0.15.1b.BUILD",
)

new_local_repository(
    name = "json-c-0.9",
    path = "/root/NasX86/SysLib/json-c-0.9",
    build_file = "repo/json-c-0.9.BUILD",
)

new_local_repository(
    name = "sqlite-3.4.1",
    path = "/root/NasX86/SysLib/sqlite-3.4.1",
    build_file = "repo/sqlite-3.4.1.BUILD",
)
#add_package(name = "sqlite3", path = "/root/NasX86/SysLib/sqlite-3.4.1", lib_name="sqlite3")


new_local_repository(
    name = "thin-provisioning-tools-v0.4.1",
    path = "/root/NasX86/SysUtil/thin-provisioning-tools-v0.4.1",
    build_file = "repo/thin-provisioning-tools-v0.4.1.BUILD",
)

new_local_repository(
    name = "libaio-0.3.109",
    path = "/root/NasX86/SysLib/libaio-0.3.109",
    build_file = "repo/libaio-0.3.109.BUILD",
)
