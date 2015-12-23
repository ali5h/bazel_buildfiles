package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

EXTERNAL_HDRS = [
	"wand/MagickWand.h",
	"wand/animate.h",
	"wand/compare.h",
	"wand/composite.h",
	"wand/conjure.h",
	"wand/convert.h",
	"wand/deprecate.h",
	"wand/display.h",
	"wand/drawing-wand.h",
	"wand/identify.h",
	"wand/import.h",
	"wand/magick-image.h",
	"wand/magick-property.h",
	"wand/magick-wand.h",
	"wand/magick_wand.h",
	"wand/method-attribute.h",
	"wand/mogrify.h",
	"wand/montage.h",
	"wand/pixel-iterator.h",
	"wand/pixel-wand.h",
	"wand/stream.h",
	"wand/wand-view.h",
	"magick/magick-baseconfig.h",
	"magick/ImageMagick.h",
	"magick/MagickCore.h",
	"magick/PreRvIcccm.h",
	"magick/accelerate.h",
	"magick/animate.h",
	"magick/annotate.h",
	"magick/api.h",
	"magick/artifact.h",
	"magick/attribute.h",
	"magick/blob.h",
	"magick/cache.h",
	"magick/cache-view.h",
	"magick/channel.h",
	"magick/cipher.h",
	"magick/client.h",
	"magick/coder.h",
	"magick/color.h",
	"magick/colormap.h",
	"magick/colorspace.h",
	"magick/compare.h",
	"magick/composite.h",
	"magick/compress.h",
	"magick/configure.h",
	"magick/constitute.h",
	"magick/decorate.h",
	"magick/delegate.h",
	"magick/deprecate.h",
	"magick/display.h",
	"magick/distribute-cache.h",
	"magick/distort.h",
	"magick/draw.h",
	"magick/effect.h",
	"magick/enhance.h",
	"magick/exception.h",
	"magick/feature.h",
	"magick/fourier.h",
	"magick/fx.h",
	"magick/gem.h",
	"magick/geometry.h",
	"magick/hashmap.h",
	"magick/histogram.h",
	"magick/identify.h",
	"magick/image.h",
	"magick/image-view.h",
	"magick/layer.h",
	"magick/list.h",
	"magick/locale_.h",
	"magick/log.h",
	"magick/magic.h",
	"magick/magick.h",
	"magick/magick-config.h",
	"magick/magick-type.h",
	"magick/matrix.h",
	"magick/memory_.h",
	"magick/methods.h",
	"magick/method-attribute.h",
	"magick/mime.h",
	"magick/module.h",
	"magick/monitor.h",
	"magick/montage.h",
	"magick/morphology.h",
	"magick/opencl.h",
	"magick/option.h",
	"magick/paint.h",
	"magick/pixel.h",
	"magick/pixel-accessor.h",
	"magick/policy.h",
	"magick/prepress.h",
	"magick/profile.h",
	"magick/property.h",
	"magick/quantize.h",
	"magick/quantum.h",
	"magick/random_.h",
	"magick/registry.h",
	"magick/resample.h",
	"magick/resize.h",
	"magick/resource_.h",
	"magick/segment.h",
	"magick/semaphore.h",
	"magick/shear.h",
	"magick/signature.h",
	"magick/splay-tree.h",
	"magick/statistic.h",
	"magick/stream.h",
	"magick/string_.h",
	"magick/studio.h",
	"magick/timer.h",
	"magick/token.h",
	"magick/transform.h",
	"magick/threshold.h",
	"magick/type.h",
	"magick/utility.h",
	"magick/version.h",
	"magick/vision.h",
	"magick/widget.h",
	"magick/xml-tree.h",
	"magick/xwindow.h",
]

ALL_HDRS = pkg_outs(
            exes = ["convert", "identify", "composite"],
            libs = ["libMagickWand.so", "libMagickCore.so"],
            hdrs = EXTERNAL_HDRS,
            )


cc_binary(
    linkshared = 1,
    name = "libMagickWand.so",
    srcs = [
    
            "wand/animate.c",
            "wand/compare.c",
            "wand/composite.c",
            "wand/conjure.c",
            "wand/convert.c",
            "wand/deprecate.c",
            "wand/display.c",
            "wand/drawing-wand.c",
            "wand/identify.c",
            "wand/import.c",
            "wand/magick-image.c",
            "wand/magick-property.c",
            "wand/magick-wand.c",
            "wand/mogrify.c",
            "wand/montage.c",
            "wand/pixel-iterator.c",
            "wand/pixel-wand.c",
            "wand/stream.c",
            "wand/wand.c",
            "wand/wand-view.c",
    
    ] + ALL_HDRS,
    includes = ["."],
    linkopts = ["-lm"],
    copts = [
                "-DHAVE_CONFIG_H",
                "-DMAGICKCORE_HDRI_ENABLE=0",
                "-DMAGICKCORE_QUANTUM_DEPTH=16",
                "-DMAGICKCORE_EXCLUDE_DEPRECATED",
                ],
)

cc_binary(
    linkshared = 1,
    name = "libMagickCore.so",
    srcs = [
    
            "magick/accelerate.c",
            "magick/animate.c",
            "magick/annotate.c",
            "magick/artifact.c",
            "magick/attribute.c",
            "magick/blob.c",
            "magick/cache.c",
            "magick/cache-view.c",
            "magick/channel.c",
            "magick/cipher.c",
            "magick/client.c",
            "magick/coder.c",
            "magick/color.c",
            "magick/colormap.c",
            "magick/colorspace.c",
            "magick/compare.c",
            "magick/composite.c",
            "magick/compress.c",
            "magick/configure.c",
            "magick/constitute.c",
            "magick/decorate.c",
            "magick/distribute-cache.c",
            "magick/delegate.c",
            "magick/deprecate.c",
            "magick/display.c",
            "magick/distort.c",
            "magick/draw.c",
            "magick/effect.c",
            "magick/enhance.c",
            "magick/exception.c",
            "magick/feature.c",
            "magick/fourier.c",
            "magick/fx.c",
            "magick/gem.c",
            "magick/geometry.c",
            "magick/hashmap.c",
            "magick/histogram.c",
            "magick/identify.c",
            "magick/image.c",
            "magick/image-view.c",
            "magick/layer.c",
            "magick/list.c",
            "magick/locale.c",
            "magick/log.c",
            "magick/magic.c",
            "magick/magick.c",
            "magick/matrix.c",
            "magick/memory.c",
            "magick/mime.c",
            "magick/module.c",
            "magick/monitor.c",
            "magick/montage.c",
            "magick/morphology.c",
            "magick/opencl.c",
            "magick/option.c",
            "magick/paint.c",
            "magick/pixel.c",
            "magick/policy.c",
            "magick/PreRvIcccm.c",
            "magick/prepress.c",
            "magick/property.c",
            "magick/profile.c",
            "magick/quantize.c",
            "magick/quantum.c",
            "magick/quantum-export.c",
            "magick/quantum-import.c",
            "magick/random.c",
            "magick/registry.c",
            "magick/resample.c",
            "magick/resize.c",
            "magick/resource.c",
            "magick/segment.c",
            "magick/semaphore.c",
            "magick/shear.c",
            "magick/signature.c",
            "magick/splay-tree.c",
            "magick/static.c",
            "magick/statistic.c",
            "magick/stream.c",
            "magick/string.c",
            "magick/thread.c",
            "magick/timer.c",
            "magick/token.c",
            "magick/transform.c",
            "magick/threshold.c",
            "magick/type.c",
            "magick/utility.c",
            "magick/version.c",
            "magick/vision.c",
            "magick/widget.c",
            "magick/xml-tree.c",
            "magick/xwindow.c",

            "//external:zlib-so-latest",
    ] + ALL_HDRS,
    includes = ["."],
    linkopts = ["-lm", "-pthread"],
    copts = [
                "-DHAVE_CONFIG_H",
                "-DMAGICKCORE_HDRI_ENABLE=0",
                "-DMAGICKCORE_QUANTUM_DEPTH=16",
                "-DMAGICKCORE_BUILD_MODULES",
                ],
    deps = [
                "//external:zlib-hdr-latest",
                ],
)

# cc_library(
#     name = "coders",
#     srcs = [
# 	"coders/aai.c",
# 	"coders/art.c",
# 	"coders/avs.c",
# 	"coders/bgr.c",
# 	"coders/bmp.c",
# 	"coders/braille.c",
# 	"coders/cals.c",
# 	"coders/caption.c",
# 	"coders/cin.c",
# 	"coders/cip.c",
# 	"coders/clip.c",
# 	"coders/cmyk.c",
# 	"coders/cut.c",
# 	"coders/dcm.c",
# 	"coders/dds.c",
# 	"coders/debug.c",
# 	"coders/dib.c",
# 	"coders/dng.c",
# 	"coders/dot.c",
# 	"coders/dpx.c",
# 	"coders/fax.c",
# 	"coders/fd.c",
# 	"coders/fits.c",
# 	"coders/gif.c",
# 	"coders/gradient.c",
# 	"coders/gray.c",
# 	"coders/hald.c",
# 	"coders/hdr.c",
# 	"coders/histogram.c",
# 	"coders/hrz.c",
# 	"coders/html.c",
# 	"coders/icon.c",
# 	"coders/info.c",
# 	"coders/inline.c",
# 	"coders/ipl.c",
# 	"coders/jnx.c",
# 	"coders/json.c",
# 	"coders/label.c",
# 	"coders/mac.c",
# 	"coders/magick.c",
# 	"coders/map.c",
# 	"coders/mask.c",
# 	"coders/mat.c",
# 	"coders/matte.c",
# 	"coders/meta.c",
# 	"coders/miff.c",
# 	"coders/mono.c",
# 	"coders/mpc.c",
# 	"coders/mpeg.c",
# 	"coders/mpr.c",
# 	"coders/msl.c",
# 	"coders/mtv.c",
# 	"coders/mvg.c",
# 	"coders/null.c",
# 	"coders/otb.c",
# 	"coders/palm.c",
# 	"coders/pango.c",
# 	"coders/pattern.c",
# 	"coders/pcd.c",
# 	"coders/pcl.c",
# 	"coders/pcx.c",
# 	"coders/pdb.c",
# 	"coders/pdf.c",
# 	"coders/pes.c",
# 	"coders/pict.c",
# 	"coders/pix.c",
# 	"coders/plasma.c",
# 	"coders/pnm.c",
# 	"coders/preview.c",
# 	"coders/ps.c",
# 	"coders/ps2.c",
# 	"coders/ps3.c",
# 	"coders/psd.c",
# 	"coders/pwp.c",
# 	"coders/raw.c",
# 	"coders/rgb.c",
# 	"coders/rgf.c",
# 	"coders/rla.c",
# 	"coders/rle.c",
# 	"coders/scr.c",
# 	"coders/screenshot.c",
# 	"coders/sct.c",
# 	"coders/sfw.c",
# 	"coders/sgi.c",
# 	"coders/sixel.c",
# 	"coders/stegano.c",
# 	"coders/sun.c",
# 	"coders/svg.c",
# 	"coders/tga.c",
# 	"coders/thumbnail.c",
# 	"coders/tile.c",
# 	"coders/tim.c",
# 	"coders/ttf.c",
# 	"coders/txt.c",
# 	"coders/uil.c",
# 	"coders/url.c",
# 	"coders/uyvy.c",
# 	"coders/vicar.c",
# 	"coders/vid.c",
# 	"coders/viff.c",
# 	"coders/vips.c",
# 	"coders/wbmp.c",
# 	"coders/wpg.c",
# 	"coders/xbm.c",
# 	"coders/xc.c",
# 	"coders/xcf.c",
# 	"coders/xpm.c",
# 	"coders/xps.c",
# 	"coders/ycbcr.c",
# 	"coders/yuv.c",
#     ] + INTERNAL_HDRS,
#     hdrs = EXTERNAL_HDRS,
#     includes = ["."],
#     copts = [
#                 "-DHAVE_CONFIG_H",
#                 "-DMAGICKCORE_HDRI_ENABLE=0",
#                 "-DMAGICKCORE_QUANTUM_DEPTH=16",
#                 ],
#     deps = ["//external:zlib-latest"],
# )

cc_binary(
    name = "convert",
    srcs = [
                "utilities/convert.c",
                "libMagickWand.so",
                "libMagickCore.so",
            ] + ALL_HDRS,
    includes = ["."],
    copts = [
                "-DHAVE_CONFIG_H",
                "-DMAGICKCORE_HDRI_ENABLE=0",
                "-DMAGICKCORE_QUANTUM_DEPTH=16",
                ],
)

cc_binary(
    name = "identify",
    srcs = [
                "utilities/identify.c",
                "libMagickWand.so",
                "libMagickCore.so",
                ] + ALL_HDRS,
    includes = ["."],
    copts = [
                "-DHAVE_CONFIG_H",
                "-DMAGICKCORE_HDRI_ENABLE=0",
                "-DMAGICKCORE_QUANTUM_DEPTH=16",
                ],
)

cc_binary(
    name = "composite",
    srcs = [
                "utilities/composite.c",
                "libMagickWand.so",
                "libMagickCore.so",
                ] + ALL_HDRS,
    includes = ["."],
    copts = [
                "-DHAVE_CONFIG_H",
                "-DMAGICKCORE_HDRI_ENABLE=0",
                "-DMAGICKCORE_QUANTUM_DEPTH=16",
                ],
)
