package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

EXTERNAL_HDRS = [
                "gcrypt.h",
                "gcrypt-module.h",
                ]

ALL_HDRS = pkg_outs(
            libs = ["libgcrypt.so"],
            hdrs = EXTERNAL_HDRS,
            )

genrule(
    name = "mv_hdrs",
    srcs = [
                "src/gcrypt.h",
                "src/gcrypt-module.h",
    ],
    outs = EXTERNAL_HDRS,
    cmd = """
        cp -r $(location src/gcrypt.h) $(location gcrypt.h)
        cp -r $(location src/gcrypt-module.h) $(location gcrypt-module.h)
    """,
)

cc_binary(
    linkshared = 1,
    name = "libgcrypt.so",
    srcs = [
            "src/visibility.c",
            "src/misc.c",
            "src/global.c",
            "src/sexp.c",
            "src/hwfeatures.c",
            "src/stdmem.c",
            "src/secmem.c",
            "src/missing-string.c",
            "src/module.c",
            "src/fips.c",
            "src/hmac256.c",
            "src/ath.c",
            "cipher/cipher.c",
            "cipher/pubkey.c",
            "cipher/ac.c",
            "cipher/md.c",
            "cipher/hmac-tests.c",
            "cipher/primegen.c",
            "cipher/hash-common.c",
            "cipher/arcfour.c",
            "cipher/blowfish.c",
            "cipher/cast5.c",
            "cipher/crc.c",
            "cipher/des.c",
            "cipher/dsa.c",
            "cipher/elgamal.c",
            "cipher/ecc.c",
            "cipher/md4.c",
            "cipher/md5.c",
            "cipher/rijndael.c",
            "cipher/rmd160.c",
            "cipher/rsa.c",
            "cipher/seed.c",
            "cipher/serpent.c",
            "cipher/sha1.c",
            "cipher/sha256.c",
            "cipher/sha512.c",
            "cipher/tiger.c",
            "cipher/whirlpool.c",
            "cipher/twofish.c",
            "cipher/rfc2268.c",
            "cipher/camellia.c",
            "cipher/camellia-glue.c",
            "random/random.c",
            "random/random-csprng.c",
            "random/random-fips.c",
            "random/rndhw.c",
            "random/rndlinux.c",
            "mpi/mpi-add.c",
            "mpi/mpi-bit.c",
            "mpi/mpi-cmp.c",
            "mpi/mpi-div.c",
            "mpi/mpi-gcd.c",
            "mpi/mpi-inline.c",
            "mpi/mpi-inv.c",
            "mpi/mpi-mul.c",
            "mpi/mpi-mod.c",
            "mpi/mpi-pow.c",
            "mpi/mpi-mpow.c",
            "mpi/mpi-scan.c",
            "mpi/mpicoder.c",
            "mpi/mpih-div.c",
            "mpi/mpih-mul.c",
            "mpi/mpiutil.c",
            "mpi/ec.c",

            # FIX: target platform depended, *.S are symlink to the correct architect, will fail
            # with --config=arm currently

            "mpi/mpih-add1-asm.S",
            "mpi/mpih-sub1-asm.S",
            "mpi/mpih-mul1-asm.S",
            "mpi/mpih-mul2-asm.S",
            "mpi/mpih-mul3-asm.S",
            "mpi/mpih-lshift-asm.S",
            "mpi/mpih-rshift-asm.S",

            "//external:gpg-error-so-latest",

    ] + ALL_HDRS,
    includes = [".", "src"],
    copts = ["-DHAVE_CONFIG_H", "-w"],
    deps = [
            "//external:gpg-error-hdr-latest",
            ],
)

