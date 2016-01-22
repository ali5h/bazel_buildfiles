package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = ["id3tag.h"]

pkg_outs(
            libs = ["libid3tag.so"],
            hdrs = EXTERNAL_HDRS,
            )

qnap_cc_library(
        name = "libid3tag.so",
        srcs = [
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
        deps = [
                "//external:zlib-hdr-latest",
                ":special_ext",
                ],
)

cc_library(
    name = "special_ext",
    hdrs = ["genre.dat"],
)
