package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

pkg_exes(["klist", "kinit"])

cc_library(
    name = 'dep_libs',
    deps = ["libkrb5-dev"],
)

filegroup(
    name = 'libs',
    srcs = [
            "libgssapi_krb5.so.2.2",
            "libkrb5.so.3.3", 
            "libk5crypto.so.3.1",
            "libkrb5support.so.0.1",
        ],
)

EXTERNAL_HDRS = [
            "include/gssapi.h",
            "include/gssapi/gssapi.h",
            "include/gssapi/gssapi_ext.h",
            "include/gssapi/gssapi_generic.h",
            "include/gssapi/gssapi_krb5.h",
            "include/gssapi/mechglue.h",
            "include/gssrpc/auth.h",
            "include/gssrpc/auth_gss.h",
            "include/gssrpc/auth_gssapi.h",
            "include/gssrpc/auth_unix.h",
            "include/gssrpc/clnt.h",
            "include/gssrpc/netdb.h",
            "include/gssrpc/pmap_clnt.h",
            "include/gssrpc/pmap_prot.h",
            "include/gssrpc/pmap_rmt.h",
            "include/gssrpc/rename.h",
            "include/gssrpc/rpc.h",
            "include/gssrpc/rpc_msg.h",
            "include/gssrpc/svc.h",
            "include/gssrpc/svc_auth.h",
            "include/gssrpc/types.h",
            "include/gssrpc/xdr.h",
            "include/kadm5/admin.h",
            "include/kadm5/chpass_util_strings.h",
            "include/kadm5/kadm_err.h",
            "include/kdb.h",
            "include/krb5.h",
            "include/krb5/ccselect_plugin.h",
            "include/krb5/clpreauth_plugin.h",
            "include/krb5/hostrealm_plugin.h",
            "include/krb5/kadm5_hook_plugin.h",
            "include/krb5/kdcpreauth_plugin.h",
            "include/krb5/krb5.h",
            "include/krb5/localauth_plugin.h",
            "include/krb5/locate_plugin.h",
            "include/krb5/plugin.h",
            "include/krb5/preauth_plugin.h",
            "include/krb5/pwqual_plugin.h",
            "include/profile.h",
]

cc_library(
    linkstatic = 1,
    name = "libkrb5-dev",
    hdrs = EXTERNAL_HDRS,
    includes = ["include"],
)

genrule(
    local = 1,
    name = "local_build",
    outs = [
            "libgssapi_krb5.so.2.2",
            "libkrb5.so.3.3", 
            "libk5crypto.so.3.1",
            "libkrb5support.so.0.1",
            "klist",
            "kinit",

            "include/gssapi.h",
            "include/gssapi/gssapi.h",
            "include/gssapi/gssapi_ext.h",
            "include/gssapi/gssapi_generic.h",
            "include/gssapi/gssapi_krb5.h",
            "include/gssapi/mechglue.h",
            "include/gssrpc/auth.h",
            "include/gssrpc/auth_gss.h",
            "include/gssrpc/auth_gssapi.h",
            "include/gssrpc/auth_unix.h",
            "include/gssrpc/clnt.h",
            "include/gssrpc/netdb.h",
            "include/gssrpc/pmap_clnt.h",
            "include/gssrpc/pmap_prot.h",
            "include/gssrpc/pmap_rmt.h",
            "include/gssrpc/rename.h",
            "include/gssrpc/rpc.h",
            "include/gssrpc/rpc_msg.h",
            "include/gssrpc/svc.h",
            "include/gssrpc/svc_auth.h",
            "include/gssrpc/types.h",
            "include/gssrpc/xdr.h",
            "include/kadm5/admin.h",
            "include/kadm5/chpass_util_strings.h",
            "include/kadm5/kadm_err.h",
            "include/kdb.h",
            "include/krb5.h",
            "include/krb5/ccselect_plugin.h",
            "include/krb5/clpreauth_plugin.h",
            "include/krb5/hostrealm_plugin.h",
            "include/krb5/kadm5_hook_plugin.h",
            "include/krb5/kdcpreauth_plugin.h",
            "include/krb5/krb5.h",
            "include/krb5/localauth_plugin.h",
            "include/krb5/locate_plugin.h",
            "include/krb5/plugin.h",
            "include/krb5/preauth_plugin.h",
            "include/krb5/pwqual_plugin.h",
            "include/profile.h",

    ],
    cmd = """
        TMPDIR=$$(mktemp -d)
        (cd external/krb5-1.13/src &&
        make distclean &&
        krb5_cv_attr_constructor_destructor=yes ac_cv_func_regcomp=yes ac_cv_printf_positional=yes CPPFLAGS="-DDESTRUCTOR_ATTR_WORKS" ./configure --host=x86_64-linux-gnu --prefix= --build=x86_64-linux --disable-static --enable-shared --disable-nls &&
        make &&
        make DESTDIR=$$TMPDIR install
        )
        cp $$TMPDIR/lib/libgssapi_krb5.so.2.2 $(location libgssapi_krb5.so.2.2)
        cp $$TMPDIR/lib/libkrb5.so.3.3 $(location libkrb5.so.3.3)
        cp $$TMPDIR/lib/libk5crypto.so.3.1 $(location libk5crypto.so.3.1)
        cp $$TMPDIR/lib/libkrb5support.so.0.1 $(location libkrb5support.so.0.1)
        cp $$TMPDIR/bin/klist $(location klist)
        cp $$TMPDIR/bin/kinit $(location kinit)

        cp $$TMPDIR/include/gssapi.h                         $(location include/gssapi.h)
        cp $$TMPDIR/include/gssapi/gssapi.h                  $(location include/gssapi/gssapi.h)
        cp $$TMPDIR/include/gssapi/gssapi_ext.h              $(location include/gssapi/gssapi_ext.h)
        cp $$TMPDIR/include/gssapi/gssapi_generic.h          $(location include/gssapi/gssapi_generic.h)
        cp $$TMPDIR/include/gssapi/gssapi_krb5.h             $(location include/gssapi/gssapi_krb5.h)
        cp $$TMPDIR/include/gssapi/mechglue.h                $(location include/gssapi/mechglue.h)
        cp $$TMPDIR/include/gssrpc/auth.h                    $(location include/gssrpc/auth.h)
        cp $$TMPDIR/include/gssrpc/auth_gss.h                $(location include/gssrpc/auth_gss.h)
        cp $$TMPDIR/include/gssrpc/auth_gssapi.h             $(location include/gssrpc/auth_gssapi.h)
        cp $$TMPDIR/include/gssrpc/auth_unix.h               $(location include/gssrpc/auth_unix.h)
        cp $$TMPDIR/include/gssrpc/clnt.h                    $(location include/gssrpc/clnt.h)
        cp $$TMPDIR/include/gssrpc/netdb.h                   $(location include/gssrpc/netdb.h)
        cp $$TMPDIR/include/gssrpc/pmap_clnt.h               $(location include/gssrpc/pmap_clnt.h)
        cp $$TMPDIR/include/gssrpc/pmap_prot.h               $(location include/gssrpc/pmap_prot.h)
        cp $$TMPDIR/include/gssrpc/pmap_rmt.h                $(location include/gssrpc/pmap_rmt.h)
        cp $$TMPDIR/include/gssrpc/rename.h                  $(location include/gssrpc/rename.h)
        cp $$TMPDIR/include/gssrpc/rpc.h                     $(location include/gssrpc/rpc.h)
        cp $$TMPDIR/include/gssrpc/rpc_msg.h                 $(location include/gssrpc/rpc_msg.h)
        cp $$TMPDIR/include/gssrpc/svc.h                     $(location include/gssrpc/svc.h)
        cp $$TMPDIR/include/gssrpc/svc_auth.h                $(location include/gssrpc/svc_auth.h)
        cp $$TMPDIR/include/gssrpc/types.h                   $(location include/gssrpc/types.h)
        cp $$TMPDIR/include/gssrpc/xdr.h                     $(location include/gssrpc/xdr.h)
        cp $$TMPDIR/include/kadm5/admin.h                    $(location include/kadm5/admin.h)
        cp $$TMPDIR/include/kadm5/chpass_util_strings.h      $(location include/kadm5/chpass_util_strings.h)
        cp $$TMPDIR/include/kadm5/kadm_err.h                 $(location include/kadm5/kadm_err.h)
        cp $$TMPDIR/include/kdb.h                            $(location include/kdb.h)
        cp $$TMPDIR/include/krb5.h                           $(location include/krb5.h)
        cp $$TMPDIR/include/krb5/ccselect_plugin.h           $(location include/krb5/ccselect_plugin.h)
        cp $$TMPDIR/include/krb5/clpreauth_plugin.h          $(location include/krb5/clpreauth_plugin.h)
        cp $$TMPDIR/include/krb5/hostrealm_plugin.h          $(location include/krb5/hostrealm_plugin.h)
        cp $$TMPDIR/include/krb5/kadm5_hook_plugin.h         $(location include/krb5/kadm5_hook_plugin.h)
        cp $$TMPDIR/include/krb5/kdcpreauth_plugin.h         $(location include/krb5/kdcpreauth_plugin.h)
        cp $$TMPDIR/include/krb5/krb5.h                      $(location include/krb5/krb5.h)
        cp $$TMPDIR/include/krb5/localauth_plugin.h          $(location include/krb5/localauth_plugin.h)
        cp $$TMPDIR/include/krb5/locate_plugin.h             $(location include/krb5/locate_plugin.h)
        cp $$TMPDIR/include/krb5/plugin.h                    $(location include/krb5/plugin.h)
        cp $$TMPDIR/include/krb5/preauth_plugin.h            $(location include/krb5/preauth_plugin.h)
        cp $$TMPDIR/include/krb5/pwqual_plugin.h             $(location include/krb5/pwqual_plugin.h)
        cp $$TMPDIR/include/profile.h                        $(location include/profile.h)

    """,

)

