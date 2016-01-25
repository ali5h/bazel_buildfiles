package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = [
            "libtiff/tiff.h",
            "libtiff/tiffconf.h",
            "libtiff/tiffio.h",
            "libtiff/tiffio.hxx",
            "libtiff/tiffvers.h",
]

pkg_outs(
            libs = ["libtiff.so"],
            hdrs = EXTERNAL_HDRS,
            )


qnap_cc_library(
    name = "libtiff.so",
    srcs = [
            "port/dummy.c",
            "libtiff/tif_aux.c",
            "libtiff/tif_close.c",
            "libtiff/tif_codec.c",
            "libtiff/tif_color.c",
            "libtiff/tif_compress.c",
            "libtiff/tif_dir.c",
            "libtiff/tif_dirinfo.c",
            "libtiff/tif_dirread.c",
            "libtiff/tif_dirwrite.c",
            "libtiff/tif_dumpmode.c",
            "libtiff/tif_error.c",
            "libtiff/tif_extension.c",
            "libtiff/tif_fax3.c",
            "libtiff/tif_fax3sm.c",
            "libtiff/tif_flush.c",
            "libtiff/tif_getimage.c",
            "libtiff/tif_jbig.c",
            "libtiff/tif_jpeg.c",
            "libtiff/tif_jpeg_12.c",
            "libtiff/tif_luv.c",
            "libtiff/tif_lzma.c",
            "libtiff/tif_lzw.c",
            "libtiff/tif_next.c",
            "libtiff/tif_ojpeg.c",
            "libtiff/tif_open.c",
            "libtiff/tif_packbits.c",
            "libtiff/tif_pixarlog.c",
            "libtiff/tif_predict.c",
            "libtiff/tif_print.c",
            "libtiff/tif_read.c",
            "libtiff/tif_strip.c",
            "libtiff/tif_swab.c",
            "libtiff/tif_thunder.c",
            "libtiff/tif_tile.c",
            "libtiff/tif_version.c",
            "libtiff/tif_warning.c",
            "libtiff/tif_write.c",
            "libtiff/tif_zip.c",
    
            "//external:zlib-so-latest",
            "//external:jpeg-so-latest",
    ],
    deps = [
            "//external:zlib-hdr-latest",
            "//external:jpeg-hdr-latest",
            ],
)

