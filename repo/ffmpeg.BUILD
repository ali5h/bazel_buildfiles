package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

pkg_exes()

filegroup(
    name = 'libs',
    srcs = [
            "libtranscoder.so",
        ],
)

genrule(
    local = 1,
    name = "local_build",
    outs = [
                "libtranscoder.so",
                "libavcodec.so",
                "libavutil.so",
                ],
    cmd = """
        TMPDIR=/root/sandbox/ffmpeg
        (cd $$TMPDIR &&
        ./configure --arch=x86_64 --enable-cross-compile --cc=x86_64-linux-gnu-gcc --prefix= --target-os=linux --disable-avformat --disable-muxers --disable-demuxers --disable-debug --disable-logging --disable-doc --disable-ffmpeg --disable-avconv --disable-ffplay --disable-ffprobe --disable-ffserver --disable-avdevice --disable-avformat --disable-swresample --disable-swscale --disable-postproc --disable-avfilter --disable-yasm --disable-decoders --disable-encoders --disable-parsers --enable-decoder=h264 --enable-decoder=mpeg4 --enable-decoder=mpeg2video --enable-decoder=mjpeg --enable-encoder=mjpeg --enable-encoder=ljpeg --enable-encoder=jpeg2000 --enable-encoder=jpegls --disable-static --enable-shared &&
        make clean &&
        make )
        cp $$TMPDIR/libtranscoder.so.* $(location libtranscoder.so)
        cp $$TMPDIR/libavcodec/libavcodec.so.* $(location libavcodec.so)
        cp $$TMPDIR/libavutil/libavutil.so.* $(location libavutil.so)
    """
)
