package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary", "SANDBOX_ROOT")

pkg_outs(
            libs = [
                "libtranscoder.so",
                "libavcodec.so",
                "libavutil.so",
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
        TMPDIR=""" + SANDBOX_ROOT + REPOSITORY_NAME[1:] + """

        TMP=$(CC)
        ABS_PATH=$${TMP%/*}

        if [ '$(TARGET_CPU)' = 'armeabi-v7a' ]
        then 
            ARCH=arm
            CROSS_PFX=$$ABS_PATH/arm-QNAP-linux-gnueabi
        elif [ '$(TARGET_CPU)' = 'x86_64' ]
        then
            ARCH=x86_64
            CROSS_PFX=$$ABS_PATH/x86_64-QNAP-linux-gnu
        fi

        (cd $$TMPDIR &&
        ./configure --arch=$$ARCH --enable-cross-compile --cc=$$CROSS_PFX-gcc --prefix= --target-os=linux --disable-avformat --disable-muxers --disable-demuxers --disable-debug --disable-logging --disable-doc --disable-ffmpeg --disable-avconv --disable-ffplay --disable-ffprobe --disable-ffserver --disable-avdevice --disable-avformat --disable-swresample --disable-swscale --disable-postproc --disable-avfilter --disable-yasm --disable-decoders --disable-encoders --disable-parsers --enable-decoder=h264 --enable-decoder=mpeg4 --enable-decoder=mpeg2video --enable-decoder=mjpeg --enable-encoder=mjpeg --enable-encoder=ljpeg --enable-encoder=jpeg2000 --enable-encoder=jpegls --disable-static --enable-shared &&
        make)
        cp $$TMPDIR/libtranscoder.so.* $(location libtranscoder.so)
        cp $$TMPDIR/libavcodec/libavcodec.so.* $(location libavcodec.so)
        cp $$TMPDIR/libavutil/libavutil.so.* $(location libavutil.so)
    """
)
