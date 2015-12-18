package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

EXTERNAL_HDRS = [
            "graphviz/arith.h",
            "graphviz/cdt.h",
            "graphviz/cgraph.h",
            "graphviz/color.h",
            "graphviz/geom.h",
            "graphviz/graphviz_version.h",
            "graphviz/gv.cpp",
            "graphviz/gv.i",
            "graphviz/gvc.h",
            "graphviz/gvcext.h",
            "graphviz/gvcjob.h",
            "graphviz/gvcommon.h",
            "graphviz/gvconfig.h",
            "graphviz/gvplugin.h",
            "graphviz/gvplugin_device.h",
            "graphviz/gvplugin_layout.h",
            "graphviz/gvplugin_loadimage.h",
            "graphviz/gvplugin_render.h",
            "graphviz/gvplugin_textlayout.h",
            "graphviz/gvpr.h",
            "graphviz/pack.h",
            "graphviz/pathgeom.h",
            "graphviz/pathplan.h",
            "graphviz/textspan.h",
            "graphviz/types.h",
            "graphviz/usershape.h",
            "graphviz/xdot.h",
]

pkg_outs(
            libs = ["libxdot.so", "libpathplan.so", "libgvpr.so", "libgvc.so", "libcgraph.so", "libcdt.so"],
            hdrs = EXTERNAL_HDRS,
)

genrule(
    local = 1,
    name = "local_build",
    outs = EXTERNAL_HDRS + [
                "libxdot.so",
                "libpathplan.so",
                "libgvpr.so",
                "libgvc.so",
                "libcgraph.so",
                "libcdt.so",
    ],
    cmd = """
                TMPDIR2=$$(mktemp -d)
                TMPDIR=/root/sandbox/""" + REPOSITORY_NAME[1:] + """
                
                if [ '$(TARGET_CPU)' = 'armeabi-v7a' ]
                then 
                    HOST_CFG=arm-linux-gnueabi
                elif [ '$(TARGET_CPU)' = 'x86_64' ]
                then
                    HOST_CFG=x86_64-linux-gnu
                fi

                (cd $$TMPDIR &&
                CC=$(CC) AR=$(AR) NM=$(NM) STRIP=$(STRIP) OBJCOPY=$(OBJCOPY) ./configure --host=$$HOST_CFG --prefix= --enable-shared --disable-static --disable-nls &&
                make &&
                make DESTDIR=$$TMPDIR2 install)
                cp $$TMPDIR2/lib/libxdot.so.4.0.0        $(location libxdot.so)
                cp $$TMPDIR2/lib/libpathplan.so.4.0.0    $(location libpathplan.so)
                cp $$TMPDIR2/lib/libgvpr.so.2.0.0        $(location libgvpr.so)
                cp $$TMPDIR2/lib/libgvc.so.6.0.0         $(location libgvc.so)
                cp $$TMPDIR2/lib/libcgraph.so.6.0.0      $(location libcgraph.so)
                cp $$TMPDIR2/lib/libcdt.so.5.0.0         $(location libcdt.so)

                cp $$TMPDIR2/include/graphviz/arith.h                  $(location graphviz/arith.h)
                cp $$TMPDIR2/include/graphviz/cdt.h                    $(location graphviz/cdt.h)
                cp $$TMPDIR2/include/graphviz/cgraph.h                 $(location graphviz/cgraph.h)
                cp $$TMPDIR2/include/graphviz/color.h                  $(location graphviz/color.h)
                cp $$TMPDIR2/include/graphviz/geom.h                   $(location graphviz/geom.h)
                cp $$TMPDIR2/include/graphviz/graphviz_version.h       $(location graphviz/graphviz_version.h)
                cp $$TMPDIR2/include/graphviz/gv.cpp                   $(location graphviz/gv.cpp)
                cp $$TMPDIR2/include/graphviz/gv.i                     $(location graphviz/gv.i)
                cp $$TMPDIR2/include/graphviz/gvc.h                    $(location graphviz/gvc.h)
                cp $$TMPDIR2/include/graphviz/gvcext.h                 $(location graphviz/gvcext.h)
                cp $$TMPDIR2/include/graphviz/gvcjob.h                 $(location graphviz/gvcjob.h)
                cp $$TMPDIR2/include/graphviz/gvcommon.h               $(location graphviz/gvcommon.h)
                cp $$TMPDIR2/include/graphviz/gvconfig.h               $(location graphviz/gvconfig.h)
                cp $$TMPDIR2/include/graphviz/gvplugin.h               $(location graphviz/gvplugin.h)
                cp $$TMPDIR2/include/graphviz/gvplugin_device.h        $(location graphviz/gvplugin_device.h)
                cp $$TMPDIR2/include/graphviz/gvplugin_layout.h        $(location graphviz/gvplugin_layout.h)
                cp $$TMPDIR2/include/graphviz/gvplugin_loadimage.h     $(location graphviz/gvplugin_loadimage.h)
                cp $$TMPDIR2/include/graphviz/gvplugin_render.h        $(location graphviz/gvplugin_render.h)
                cp $$TMPDIR2/include/graphviz/gvplugin_textlayout.h    $(location graphviz/gvplugin_textlayout.h)
                cp $$TMPDIR2/include/graphviz/gvpr.h                   $(location graphviz/gvpr.h)
                cp $$TMPDIR2/include/graphviz/pack.h                   $(location graphviz/pack.h)
                cp $$TMPDIR2/include/graphviz/pathgeom.h               $(location graphviz/pathgeom.h)
                cp $$TMPDIR2/include/graphviz/pathplan.h               $(location graphviz/pathplan.h)
                cp $$TMPDIR2/include/graphviz/textspan.h               $(location graphviz/textspan.h)
                cp $$TMPDIR2/include/graphviz/types.h                  $(location graphviz/types.h)
                cp $$TMPDIR2/include/graphviz/usershape.h              $(location graphviz/usershape.h)
                cp $$TMPDIR2/include/graphviz/xdot.h                   $(location graphviz/xdot.h)

        """
)
