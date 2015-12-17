package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs")

# EXTERNAL_HDRS referring to installed header
EXTERNAL_HDRS = [
            "gssapi.h",
            "gssapi/gssapi.h",
            "gssapi/gssapi_ext.h",
            "gssapi/gssapi_generic.h",
            "gssapi/gssapi_krb5.h",
            "gssapi/mechglue.h",
            "gssrpc/auth.h",
            "gssrpc/auth_gss.h",
            "gssrpc/auth_gssapi.h",
            "gssrpc/auth_unix.h",
            "gssrpc/clnt.h",
            "gssrpc/netdb.h",
            "gssrpc/pmap_clnt.h",
            "gssrpc/pmap_prot.h",
            "gssrpc/pmap_rmt.h",
            "gssrpc/rename.h",
            "gssrpc/rpc.h",
            "gssrpc/rpc_msg.h",
            "gssrpc/svc.h",
            "gssrpc/svc_auth.h",
            "gssrpc/types.h",
            "gssrpc/xdr.h",
            "kadm5/admin.h",
            "kadm5/chpass_util_strings.h",
            "kadm5/kadm_err.h",
            "kdb.h",
            "krb5.h",
            "krb5/ccselect_plugin.h",
            "krb5/clpreauth_plugin.h",
            "krb5/hostrealm_plugin.h",
            "krb5/kadm5_hook_plugin.h",
            "krb5/kdcpreauth_plugin.h",
            "krb5/krb5.h",
            "krb5/localauth_plugin.h",
            "krb5/locate_plugin.h",
            "krb5/plugin.h",
            "krb5/preauth_plugin.h",
            "krb5/pwqual_plugin.h",
            "profile.h",
]

pkg_outs(
        exes = [
                "klist",
                "kinit",
                ],
        libs = [
                "libgssapi_krb5.so",
                "libkrb5.so", 
                "libk5crypto.so",
                "libkrb5support.so",
                ],
        hdrs = EXTERNAL_HDRS
        )

genrule(
    local = 1,
    name = "local_build",
    outs = EXTERNAL_HDRS + [
            "libgssapi_krb5.so",
            "libkrb5.so", 
            "libk5crypto.so",
            "libkrb5support.so",
            "klist",
            "kinit",
    ],
    cmd = """
        TMPDIR=$$(mktemp -d)

        if [ '$(TARGET_CPU)' = 'armeabi-v7a' ]
        then 
            HOST_CFG=arm-linux-gnueabi
        elif [ '$(TARGET_CPU)' = 'x86_64' ]
        then
            HOST_CFG=x86_64-linux-gnu
        fi

        (cd external/""" + REPOSITORY_NAME[1:] + """/src &&
        make distclean &&
        krb5_cv_attr_constructor_destructor=yes ac_cv_func_regcomp=yes ac_cv_printf_positional=yes CPPFLAGS="-DDESTRUCTOR_ATTR_WORKS" CC=$(CC) AR=$(AR) NM=$(NM) STRIP=$(STRIP) OBJCOPY=$(OBJCOPY) ./configure --host=$$HOST_CFG --prefix= --disable-static --enable-shared --disable-nls &&
        make &&
        make DESTDIR=$$TMPDIR install
        )
        cp $$TMPDIR/lib/libgssapi_krb5.so.2.2 $(location libgssapi_krb5.so)
        cp $$TMPDIR/lib/libkrb5.so.3.3 $(location libkrb5.so)
        cp $$TMPDIR/lib/libk5crypto.so.3.1 $(location libk5crypto.so)
        cp $$TMPDIR/lib/libkrb5support.so.0.1 $(location libkrb5support.so)
        cp $$TMPDIR/bin/klist $(location klist)
        cp $$TMPDIR/bin/kinit $(location kinit)

        cp $$TMPDIR/include/gssapi.h                         $(location gssapi.h)
        cp $$TMPDIR/include/gssapi/gssapi.h                  $(location gssapi/gssapi.h)
        cp $$TMPDIR/include/gssapi/gssapi_ext.h              $(location gssapi/gssapi_ext.h)
        cp $$TMPDIR/include/gssapi/gssapi_generic.h          $(location gssapi/gssapi_generic.h)
        cp $$TMPDIR/include/gssapi/gssapi_krb5.h             $(location gssapi/gssapi_krb5.h)
        cp $$TMPDIR/include/gssapi/mechglue.h                $(location gssapi/mechglue.h)
        cp $$TMPDIR/include/gssrpc/auth.h                    $(location gssrpc/auth.h)
        cp $$TMPDIR/include/gssrpc/auth_gss.h                $(location gssrpc/auth_gss.h)
        cp $$TMPDIR/include/gssrpc/auth_gssapi.h             $(location gssrpc/auth_gssapi.h)
        cp $$TMPDIR/include/gssrpc/auth_unix.h               $(location gssrpc/auth_unix.h)
        cp $$TMPDIR/include/gssrpc/clnt.h                    $(location gssrpc/clnt.h)
        cp $$TMPDIR/include/gssrpc/netdb.h                   $(location gssrpc/netdb.h)
        cp $$TMPDIR/include/gssrpc/pmap_clnt.h               $(location gssrpc/pmap_clnt.h)
        cp $$TMPDIR/include/gssrpc/pmap_prot.h               $(location gssrpc/pmap_prot.h)
        cp $$TMPDIR/include/gssrpc/pmap_rmt.h                $(location gssrpc/pmap_rmt.h)
        cp $$TMPDIR/include/gssrpc/rename.h                  $(location gssrpc/rename.h)
        cp $$TMPDIR/include/gssrpc/rpc.h                     $(location gssrpc/rpc.h)
        cp $$TMPDIR/include/gssrpc/rpc_msg.h                 $(location gssrpc/rpc_msg.h)
        cp $$TMPDIR/include/gssrpc/svc.h                     $(location gssrpc/svc.h)
        cp $$TMPDIR/include/gssrpc/svc_auth.h                $(location gssrpc/svc_auth.h)
        cp $$TMPDIR/include/gssrpc/types.h                   $(location gssrpc/types.h)
        cp $$TMPDIR/include/gssrpc/xdr.h                     $(location gssrpc/xdr.h)
        cp $$TMPDIR/include/kadm5/admin.h                    $(location kadm5/admin.h)
        cp $$TMPDIR/include/kadm5/chpass_util_strings.h      $(location kadm5/chpass_util_strings.h)
        cp $$TMPDIR/include/kadm5/kadm_err.h                 $(location kadm5/kadm_err.h)
        cp $$TMPDIR/include/kdb.h                            $(location kdb.h)
        cp $$TMPDIR/include/krb5.h                           $(location krb5.h)
        cp $$TMPDIR/include/krb5/ccselect_plugin.h           $(location krb5/ccselect_plugin.h)
        cp $$TMPDIR/include/krb5/clpreauth_plugin.h          $(location krb5/clpreauth_plugin.h)
        cp $$TMPDIR/include/krb5/hostrealm_plugin.h          $(location krb5/hostrealm_plugin.h)
        cp $$TMPDIR/include/krb5/kadm5_hook_plugin.h         $(location krb5/kadm5_hook_plugin.h)
        cp $$TMPDIR/include/krb5/kdcpreauth_plugin.h         $(location krb5/kdcpreauth_plugin.h)
        cp $$TMPDIR/include/krb5/krb5.h                      $(location krb5/krb5.h)
        cp $$TMPDIR/include/krb5/localauth_plugin.h          $(location krb5/localauth_plugin.h)
        cp $$TMPDIR/include/krb5/locate_plugin.h             $(location krb5/locate_plugin.h)
        cp $$TMPDIR/include/krb5/plugin.h                    $(location krb5/plugin.h)
        cp $$TMPDIR/include/krb5/preauth_plugin.h            $(location krb5/preauth_plugin.h)
        cp $$TMPDIR/include/krb5/pwqual_plugin.h             $(location krb5/pwqual_plugin.h)
        cp $$TMPDIR/include/profile.h                        $(location profile.h)

    """,

)

