package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

pkg_libs(["libgssapi_krb5.so", "libkrb5.so", "libk5crypto.so", "libkrb5support.so"])
pkg_exes(["klist", "kinit"])

genrule(
    name = "local_build",
    outs = [
        "libgssapi_krb5.so",
        "libkrb5.so", 
        "libk5crypto.so",
        "libkrb5support.so",
        "klist",
        "kinit",
    ]
    cmd = """
        TMPDIR=$$(mktemp -d)
        (cd external/krb5-1.13/src &&
        make distclean &&
        krb5_cv_attr_constructor_destructor=yes ac_cv_func_regcomp=yes ac_cv_printf_positional=yes CPPFLAGS="-DDESTRUCTOR_ATTR_WORKS" ./configure --host=x86_64-linux-gnu --prefix= --build=x86_64-linux --disable-static --enable-shared --disable-nls &&
        make &&
        make DESTDIR=$$TMPDIR install
        )
        cp $$TMPDIR/lib/libgssapi_krb5.so.2.2 $(location libgssapi_krb5.so)
        cp $$TMPDIR/lib/libkrb5.so.3.3 $(location libkrb5.so)
        cp $$TMPDIR/lib/libk5crypto.so.3.1 $(location libk5crypto.so)
        cp $$TMPDIR/lib/libkrb5support.so.0.1 $(location libkrb5support.so)
        cp $$TMPDIR/bin/klist $(location klist)
        cp $$TMPDIR/bin/kinit $(location kinit)
        rm -fr $$TMPDIR
    """

)

