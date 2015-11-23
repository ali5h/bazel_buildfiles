package(default_visibility = ["//visibility:public"])

EXTERNAL_HDRS = ["lib/mcrypt.h"]
INTERNAL_HDRS = glob(["**/*.h"], EXTERNAL_HDRS)

cc_library(
    name = "mcrypt",
    srcs = [
        
                "lib/mcrypt_extra.c",
                "lib/mcrypt.c",
                "lib/bzero.c",
                "lib/xmemory.c",
                "lib/mcrypt_modules.c",
                "lib/win32_comp.c",
                "lib/mcrypt_threads.c",
                "lib/mcrypt_symb.c",

                "modules/modes/cbc.c",
                "modules/modes/cfb.c",
                "modules/modes/ctr.c",
                "modules/modes/ecb.c",
                "modules/modes/ncfb.c",
                "modules/modes/nofb.c",
                "modules/modes/ofb.c",
                "modules/modes/stream.c",
                "modules/algorithms/cast-128.c",
                "modules/algorithms/gost.c",
                "modules/algorithms/rijndael-128.c",
                "modules/algorithms/twofish.c",
                "modules/algorithms/arcfour.c",
                "modules/algorithms/cast-256.c",
                "modules/algorithms/loki97.c",
                "modules/algorithms/rijndael-192.c",
                "modules/algorithms/saferplus.c",
                "modules/algorithms/wake.c",
                "modules/algorithms/blowfish-compat.c",
                "modules/algorithms/des.c",
                "modules/algorithms/rijndael-256.c",
                "modules/algorithms/serpent.c",
                "modules/algorithms/xtea.c",
                "modules/algorithms/blowfish.c",
                "modules/algorithms/enigma.c",
                "modules/algorithms/rc2.c",
                "modules/algorithms/tripledes.c",

    
    ] + INTERNAL_HDRS,
    hdrs = EXTERNAL_HDRS,
    includes = [".", "lib"],
    copts = ["-DHAVE_CONFIG_H", '-DLIBDIR=\\"/usr/local/lib/libmcrypt/\\"'],
)

