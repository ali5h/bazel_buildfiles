package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)


ALL_HDRS = pkg_outs(
            exes = ["gpg"],
            )

OPTS = [
        "-DHAVE_CONFIG_H",
        "-Wno-pointer-sign",
        '-DGNUPG_LIBDIR=\\"/usr/local/lib/gnupg\\"',
        '-DLOCALEDIR=\\"/usr/local/share/locale\\"',
        '-DGNUPG_LIBEXECDIR=\\"/usr/local/libexec/gnupg\\"',
        '-DGNUPG_DATADIR=\\"/usr/local/share/gnupg\\"',
        ]


cc_binary(
    name = "gpg",
    srcs = [

            "g10/gpg.c",
            "g10/app-openpgp.c",
            "g10/iso7816.c",
            "g10/apdu.c",
            "g10/ccid-driver.c",
            "g10/card-util.c",
            "g10/cardglue.c",
            "g10/tlv.c",
            "g10/build-packet.c",
            "g10/compress.c",
            "g10/free-packet.c",
            "g10/getkey.c",
            "g10/keydb.c",
            "g10/keyring.c",
            "g10/seskey.c",
            "g10/kbnode.c",
            "g10/mainproc.c",
            "g10/armor.c",
            "g10/mdfilter.c",
            "g10/textfilter.c",
            "g10/progress.c",
            "g10/misc.c",
            "g10/openfile.c",
            "g10/keyid.c",
            "g10/parse-packet.c",
            "g10/status.c",
            "g10/plaintext.c",
            "g10/sig-check.c",
            "g10/keylist.c",
            "g10/signal.c",
            "g10/pkclist.c",
            "g10/skclist.c",
            "g10/pubkey-enc.c",
            "g10/passphrase.c",
            "g10/seckey-cert.c",
            "g10/encr-data.c",
            "g10/cipher.c",
            "g10/encode.c",
            "g10/sign.c",
            "g10/verify.c",
            "g10/revoke.c",
            "g10/decrypt.c",
            "g10/keyedit.c",
            "g10/dearmor.c",
            "g10/import.c",
            "g10/export.c",
            "g10/trustdb.c",
            "g10/tdbdump.c",
            "g10/tdbio.c",
            "g10/delkey.c",
            "g10/keygen.c",
            "g10/pipemode.c",
            "g10/helptext.c",
            "g10/keyserver.c",
            "g10/photoid.c",
            "g10/exec.c",

            "//external:zlib-so-latest",
            "//external:libusb-compat-so-latest",
    ] + ALL_HDRS,
    copts = OPTS,
    linkopts = ["-ldl"],
    deps = [
            ":cipher",
            ":mpi",
            ":util",
            "//external:zlib-hdr-latest",
            "//external:libusb-compat-hdr-latest",
            ],
)

cc_library(
    name = "cipher",
    srcs = [
            "cipher/cipher.c",
            "cipher/pubkey.c",
            "cipher/md.c",
            "cipher/dynload.c",
            "cipher/des.c",
            "cipher/twofish.c",
            "cipher/blowfish.c",
            "cipher/cast5.c",
            "cipher/rijndael.c",
            "cipher/camellia.c",
            "cipher/camellia-glue.c",
            "cipher/idea.c",
            "cipher/elgamal.c",
            "cipher/rsa.c",
            "cipher/primegen.c",
            "cipher/random.c",
            "cipher/dsa.c",
            "cipher/smallprime.c",
            "cipher/md5.c",
            "cipher/rmd160.c",
            "cipher/sha1.c",
            "cipher/sha256.c",
            "cipher/rndlinux.c",
            "cipher/sha512.c",

            "//external:readline-so-latest",
    
    ] + ALL_HDRS,
    includes = [".", "include"],
    copts = OPTS,
    deps = ["//external:readline-hdr-latest"]
)

cc_library(
    name = "mpi",
    srcs = [
            "mpi/mpi-add.c",
            "mpi/mpi-bit.c",
            "mpi/mpi-cmp.c",
            "mpi/mpi-div.c",
            "mpi/mpi-gcd.c",
            "mpi/mpi-inline.c",
            "mpi/mpi-inv.c",
            "mpi/mpi-mul.c",
            "mpi/mpi-pow.c",
            "mpi/mpi-mpow.c",
            "mpi/mpi-scan.c",
            "mpi/mpicoder.c",
            "mpi/mpih-cmp.c",
            "mpi/mpih-div.c",
            "mpi/mpih-mul.c",
            "mpi/mpiutil.c",
            "mpi/mpih-mul1.c",
            "mpi/mpih-mul2.c",
            "mpi/mpih-mul3.c",
            "mpi/mpih-add1.c",
            "mpi/mpih-sub1.c",
            "mpi/mpih-lshift.c",
            "mpi/mpih-rshift.c",

    ] + ALL_HDRS,
    includes = [".", "include"],
    copts = OPTS,
)

cc_library(
    name = "util",
    srcs = [
            "util/logger.c",
            "util/fileutil.c",
            "util/miscutil.c",
            "util/strgutil.c",
            "util/ttyio.c",
            "util/argparse.c",
            "util/memory.c",
            "util/secmem.c",
            "util/errors.c",
            "util/iobuf.c",
            "util/dotlock.c",
            "util/http.c",
            "util/pka.c",
            "util/membuf.c",
            "util/cert.c",
            "util/convert.c",
            "util/estream-printf.c",
            "util/compat.c",
            "util/srv.c",
            "util/assuan-buffer.c",
            "util/assuan-client.c",
            "util/assuan-errors.c",
            "util/assuan-logging.c",
            "util/assuan-socket-connect.c",
            "util/assuan-connect.c",
            "util/assuan-socket.c",
            "util/assuan-util.c",
            
            "//external:readline-so-latest",
    ] + ALL_HDRS,
    includes = [".", "include"],
    copts = OPTS,
    linkopts = ["-lresolv"],
    deps = ["//external:readline-hdr-latest"]
)
