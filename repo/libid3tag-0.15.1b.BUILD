package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

ALL_HDRS = glob(["**/*.h"])
EXTERNAL_HDRS = ["id3tag.h"]

pkg_outs(
            libs = ["libid3tag.so"],
            hdrs = EXTERNAL_HDRS,
            )

cc_binary(
        linkshared = 1,
        name = "libid3tag.so",
        srcs = ALL_HDRS +  [
                "version.c",
                "ucs4.c",
                "latin1.c",
                "utf16.c",
                "utf8.c",
                "parse.c",
                "render.c",
                "field.c",
                "frametype.c",
                "compat.c",
                "genre.c",
                "frame.c",
                "crc.c",
                "util.c",
                "tag.c",
                "file.c",

                "//external:zlib-so-latest",
            ],
        copts = ["-DHAVE_CONFIG_H", "-w"],
        deps = [
                "//external:zlib-hdr-latest",
                ":special_ext",
                ],
)

cc_library(
    name = "special_ext",
    hdrs = ["genre.dat"],
)
