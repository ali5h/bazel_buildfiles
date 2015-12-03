package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

EXTERNAL_HDRS = []
INTERNAL_HDRS = glob(["**/*.h"], EXTERNAL_HDRS)

cc_library(
    name = "gv_php",
    srcs = [
            

            "tclpkg/gv/gv_php_init.c",
            "tclpkg/gv/gv.cpp",
            "tclpkg/gv/gv_builtins.c",
# gv_php.lo

            "lib/gvc/gvrender.c",
            "lib/gvc/gvlayout.c",
            "lib/gvc/gvdevice.c",
            "lib/gvc/gvloadimage.c",
            "lib/gvc/gvcontext.c",
            "lib/gvc/gvjobs.c",
            "lib/gvc/gvevent.c",
            "lib/gvc/gvplugin.c",
            "lib/gvc/gvconfig.c",
            "lib/gvc/gvtextlayout.c",
            "lib/gvc/gvusershape.c",
            "lib/gvc/gvbuffstderr.c",
            "lib/gvc/gvc.c",

            "lib/cgraph/agerror.c",
            "lib/cgraph/agxbuf.c",
            "lib/cgraph/apply.c",
            "lib/cgraph/attr.c",
            "lib/cgraph/edge.c",
            "lib/cgraph/flatten.c",
            "lib/cgraph/graph.c",
            "lib/cgraph/grammar.c",
            "lib/cgraph/id.c",
            "lib/cgraph/imap.c",
            "lib/cgraph/io.c",
            "lib/cgraph/mem.c",
            "lib/cgraph/node.c",
            "lib/cgraph/obj.c",
            "lib/cgraph/pend.c",
            "lib/cgraph/rec.c",
            "lib/cgraph/refstr.c",
            "lib/cgraph/scan.c",
            "lib/cgraph/subg.c",
            "lib/cgraph/utils.c",
            "lib/cgraph/write.c",


            "lib/cdt/dtclose.c",
            "lib/cdt/dtdisc.c",
            "lib/cdt/dtextract.c",
            "lib/cdt/dtflatten.c",
            "lib/cdt/dthash.c",
            "lib/cdt/dtlist.c",
            "lib/cdt/dtmethod.c",
            "lib/cdt/dtopen.c",
            "lib/cdt/dtrenew.c",
            "lib/cdt/dtrestore.c",
            "lib/cdt/dtsize.c",
            "lib/cdt/dtstat.c",
            "lib/cdt/dtstrhash.c",
            "lib/cdt/dttree.c",
            "lib/cdt/dttreeset.c",
            "lib/cdt/dtview.c",
            "lib/cdt/dtwalk.c",

    ] + INTERNAL_HDRS,
    hdrs = EXTERNAL_HDRS,
    includes = ["."],
    copts = [
                "-DHAVE_CONFIG_H",
                "-DDEMAND_LOADING=1",
                '-DGVLIBDIR=\\"/usr/local/lib/graphviz\\"'
                ],
)

