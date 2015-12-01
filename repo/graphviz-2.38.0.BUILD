package(default_visibility = ["//visibility:public"])

EXTERNAL_HDRS = []
INTERNAL_HDRS = glob(["**/*.h"], EXTERNAL_HDRS)

cc_library(
    name = "gv_php",
    srcs = [
            

gv_php_init.lo
gv.lo
gv_builtins.lo
gv_php.lo

# $(top_builddir)/lib/gvc/libgvc.la
gvrender.lo gvlayout.lo gvdevice.lo gvloadimage.lo
gvcontext.lo gvjobs.lo gvevent.lo gvplugin.lo gvconfig.lo
gvtextlayout.lo gvusershape.lo gvbuffstderr.lo gvc.lo

# $(top_builddir)/lib/cgraph/libcgraph.la
agerror.lo agxbuf.lo apply.lo attr.lo edge.lo
flatten.lo graph.lo grammar.lo id.lo imap.lo io.lo mem.lo
node.lo obj.lo pend.lo rec.lo refstr.lo scan.lo subg.lo
utils.lo write.lo

# $(top_builddir)/lib/cdt/libcdt.la
dtclose.lo dtdisc.lo dtextract.lo dtflatten.lo
dthash.lo dtlist.lo dtmethod.lo dtopen.lo dtrenew.lo
dtrestore.lo dtsize.lo dtstat.lo dtstrhash.lo dttree.lo
dttreeset.lo dtview.lo dtwalk.lo

    ] + INTERNAL_HDRS,
    hdrs = EXTERNAL_HDRS,
    includes = [],
    copts = [
                "-DHAVE_CONFIG_H",
                "-DDEMAND_LOADING=1",
                '-DGVLIBDIR=\\"/usr/local/lib/graphviz\\"'
                ],
)

