package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

pkg_exes(["openssl"])

EXTERNAL_HDRS = [
        "include/openssl/opensslconf.h",
        "include/openssl/aes.h",
        "include/openssl/asn1.h",
        "include/openssl/asn1_mac.h",
        "include/openssl/asn1t.h",
        "include/openssl/bio.h",
        "include/openssl/blowfish.h",
        "include/openssl/bn.h",
        "include/openssl/buffer.h",
        "include/openssl/camellia.h",
        "include/openssl/cast.h",
        "include/openssl/cmac.h",
        "include/openssl/cms.h",
        "include/openssl/comp.h",
        "include/openssl/conf.h",
        "include/openssl/conf_api.h",
        "include/openssl/crypto.h",
        "include/openssl/des.h",
        "include/openssl/des_old.h",
        "include/openssl/dh.h",
        "include/openssl/dsa.h",
        "include/openssl/dso.h",
        "include/openssl/dtls1.h",
        "include/openssl/e_os2.h",
        "include/openssl/ebcdic.h",
        "include/openssl/ec.h",
        "include/openssl/ecdh.h",
        "include/openssl/ecdsa.h",
        "include/openssl/engine.h",
        "include/openssl/err.h",
        "include/openssl/evp.h",
        "include/openssl/hmac.h",
        "include/openssl/krb5_asn.h",
        "include/openssl/kssl.h",
        "include/openssl/lhash.h",
        "include/openssl/md4.h",
        "include/openssl/md5.h",
        "include/openssl/modes.h",
        "include/openssl/obj_mac.h",
        "include/openssl/objects.h",
        "include/openssl/ocsp.h",
        "include/openssl/opensslv.h",
        "include/openssl/ossl_typ.h",
        "include/openssl/pem.h",
        "include/openssl/pem2.h",
        "include/openssl/pkcs12.h",
        "include/openssl/pkcs7.h",
        "include/openssl/pqueue.h",
        "include/openssl/rand.h",
        "include/openssl/rc2.h",
        "include/openssl/rc4.h",
        "include/openssl/ripemd.h",
        "include/openssl/rsa.h",
        "include/openssl/safestack.h",
        "include/openssl/seed.h",
        "include/openssl/sha.h",
        "include/openssl/srp.h",
        "include/openssl/srtp.h",
        "include/openssl/ssl.h",
        "include/openssl/ssl2.h",
        "include/openssl/ssl23.h",
        "include/openssl/ssl3.h",
        "include/openssl/stack.h",
        "include/openssl/symhacks.h",
        "include/openssl/tls1.h",
        "include/openssl/ts.h",
        "include/openssl/txt_db.h",
        "include/openssl/ui.h",
        "include/openssl/ui_compat.h",
        "include/openssl/whrlpool.h",
        "include/openssl/x509.h",
        "include/openssl/x509_vfy.h",
        "include/openssl/x509v3.h",
        ]

cc_library(
    name = 'dep_libs',
    hdrs = EXTERNAL_HDRS,
    includes = ["include"],
)

filegroup(
    name = 'libs',
    srcs = [
            "libssl.so",
            "libcrypto.so", 
        ],
)

genrule(
    local = 1,
    name = "local_build",
    outs = [
            "libssl.so",
            "libcrypto.so",
            "openssl",
    ],
    cmd = """
        TMPDIR=/root/sandbox/openssl-1.0.1p

        TMP=$(CC)
        ABS_PATH=$${TMP%/*}

        if [ '$(TARGET_CPU)' = 'armeabi-v7a' ]
        then 
            TARGET_CFG=linux-armv4
            CROSS_PFX=$$ABS_PATH/arm-QNAP-linux-gnueabi-
        elif [ '$(TARGET_CPU)' = 'x86_64' ]
        then
            TARGET_CFG=linux-x86_64
            CROSS_PFX=$$ABS_PATH/x86_64-QNAP-linux-gnu-
        fi
        
        (cd $$TMPDIR &&
        ./Configure --prefix= --openssldir=/etc/ssl -DOPENSSL_NO_HEARTBEATS no-zlib no-asm $$TARGET_CFG --cross-compile-prefix=$$CROSS_PFX shared &&
        make)
        cp $$TMPDIR/libcrypto.so.1.0.0 $(location libcrypto.so)
        cp $$TMPDIR/libssl.so.1.0.0 $(location libssl.so)
        cp $$TMPDIR/apps/openssl $(location openssl)
    """,
)

