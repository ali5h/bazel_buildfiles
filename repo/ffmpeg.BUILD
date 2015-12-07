package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()


EXTERNAL_HDRS = []
INTERNAL_HDRS = glob(["**/*.h"], EXTERNAL_HDRS)

# cc_library(
#     name = "avcodec",
#     srcs = [] + INTERNAL_HDRS,
#     hdrs = EXTERNAL_HDRS,
#     includes = [],
#     copts = [],
# )
# cc_library(
#     name = "avutil",
#     srcs = [] + INTERNAL_HDRS,
#     hdrs = EXTERNAL_HDRS,
#     includes = [],
#     copts = [],
# )

genrule(
    local = 1,
    name = "local_build",
    outs = ["libtranscoder.so"],
    cmd = """
        (cd external/ffmpeg &&
        ./configure --arch=x86_64 --enable-cross-compile --cc=x86_64-linux-gnu-gcc --prefix= --target-os=linux --disable-avformat --disable-muxers --disable-demuxers --disable-debug --disable-logging --disable-doc --disable-ffmpeg --disable-avconv --disable-ffplay --disable-ffprobe --disable-ffserver --disable-avdevice --disable-avformat --disable-swresample --disable-swscale --disable-postproc --disable-avfilter --disable-yasm --disable-decoders --disable-encoders --disable-parsers --enable-decoder=h264 --enable-decoder=mpeg4 --enable-decoder=mpeg2video --enable-decoder=mjpeg --enable-encoder=mjpeg --enable-encoder=ljpeg --enable-encoder=jpeg2000 --enable-encoder=jpegls --disable-static --enable-shared --disable-yasm &&
        make clean &&
        make )
        echo >  $@
    """
)
