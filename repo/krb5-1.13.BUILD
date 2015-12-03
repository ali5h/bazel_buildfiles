package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

AH  = "util/et/et_h.awk"
AC  = "util/et/et_c.awk"
INC = "include/"
ET  = "lib/krb5/error_tables/"
GG  = "lib/gssapi/generic/"
GK  = "lib/gssapi/krb5/"
PR  = "util/profile/"
CE  = "util/et/"
CCL = "ccapi/lib/"

cc_library(
    name = "gssapi_krb5",
    srcs = [
        # generic
        "lib/gssapi/generic/disp_com_err_status.c",
        "lib/gssapi/generic/disp_major_status.c",
        "lib/gssapi/generic/gssapi_generic.c",
        "lib/gssapi/generic/oid_ops.c",
        "lib/gssapi/generic/rel_buffer.c",
        "lib/gssapi/generic/rel_oid_set.c",
        "lib/gssapi/generic/util_buffer.c",
        "lib/gssapi/generic/util_buffer_set.c",
        "lib/gssapi/generic/util_errmap.c",
        "lib/gssapi/generic/util_set.c",
        "lib/gssapi/generic/util_seqstate.c",
        "lib/gssapi/generic/util_token.c",
        "lib/gssapi/generic/t_seqstate.c",
        ":%sgssapi_err_generic.c" % GG,
        ":%sgssapi_err_generic.h" % GG,
        ":include/gssapi/gssapi.h",
        ":include/gssapi/gssapi_alloc.h",
        ":include/gssapi/gssapi_generic.h",
        ],
    # hdrs = [":%sgssapi/gssapi.h" % INC],
    includes = ["include", GG, ],
    deps =["@e2fsprogs-1.42.5//:com_err"],
)

genrule(
    name ="errmap",
    srcs = ["util/gen.pl", "util/t_array.pm", "util/t_bimap.pm"],
    outs = ["%serrmap.h" % GG],
    cmd = """
        TMPDIR=$$(mktemp -d)
        cp $(location util/t_array.pm) $(location util/t_bimap.pm) $(location util/gen.pl) $$TMPDIR/
        (cd $$TMPDIR && perl -w -I$$TMPDIR $$TMPDIR/gen.pl bimap errmap.h NAME=mecherrmap LEFT=OM_uint32 RIGHT="struct mecherror" LEFTPRINT=print_OM_uint32 RIGHTPRINT=mecherror_print LEFTCMP=cmp_OM_uint32 RIGHTCMP=mecherror_cmp)
        echo > $@
    """,

)

genrule(
    name = "gssapi_err_generic",
    srcs = ["%sgssapi_err_generic.et" % GG, AH , AC],
    outs = ["%sgssapi_err_generic.c" % GG, "%sgssapi_err_generic.h" % GG],
    cmd = """
        mawk -f $(location %s) outfile=$(location %sgssapi_err_generic.h) $(location %sgssapi_err_generic.et)
        mawk -f $(location %s) outfile=$(location %sgssapi_err_generic.c) $(location %sgssapi_err_generic.et)
        """ % (AH, GG, GG, AC, GG, GG),
)

genrule(
    name = "gssapi_err_krb5",
    srcs = ["%sgssapi_err_krb5.et" % GK, AH , AC],
    outs = ["gssapi_err_krb5.c", "gssapi_err_krb5.h"],
    cmd = """
        mawk -f $(location %s) outfile=$(location gssapi_err_krb5.h) $(location %sgssapi_err_krb5.et)
        mawk -f $(location %s) outfile=$(location gssapi_err_krb5.c) $(location %sgssapi_err_krb5.et)
        """ % (AH, GK, AC, GK),
)

genrule(
    name = "gssapi.h",
    srcs = ["%sgssapi.hin" % GG],
    outs = ["include/gssapi/gssapi.h"],
    cmd = "cat $< > $@",
)

genrule(
    name = "gssapi_generic.h",
    srcs = ["lib/gssapi/generic/gssapi_generic.h"],
    outs = ["include/gssapi/gssapi_generic.h"],
    cmd = "cat $< > $@",
)

genrule(
    name = "gssapi_alloc.h",
    srcs = ["lib/gssapi/generic/gssapi_alloc.h"],
    outs = ["include/gssapi/gssapi_alloc.h"],
    cmd = "cat $< > $@",
)
