package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = [
            "libxml/DOCBparser.h",
            "libxml/HTMLparser.h",
            "libxml/HTMLtree.h",
            "libxml/SAX.h",
            "libxml/SAX2.h",
            "libxml/c14n.h",
            "libxml/catalog.h",
            "libxml/chvalid.h",
            "libxml/debugXML.h",
            "libxml/dict.h",
            "libxml/encoding.h",
            "libxml/entities.h",
            "libxml/globals.h",
            "libxml/hash.h",
            "libxml/list.h",
            "libxml/nanoftp.h",
            "libxml/nanohttp.h",
            "libxml/parser.h",
            "libxml/parserInternals.h",
            "libxml/pattern.h",
            "libxml/relaxng.h",
            "libxml/schemasInternals.h",
            "libxml/schematron.h",
            "libxml/threads.h",
            "libxml/tree.h",
            "libxml/uri.h",
            "libxml/valid.h",
            "libxml/xinclude.h",
            "libxml/xlink.h",
            "libxml/xmlIO.h",
            "libxml/xmlautomata.h",
            "libxml/xmlerror.h",
            "libxml/xmlexports.h",
            "libxml/xmlmemory.h",
            "libxml/xmlmodule.h",
            "libxml/xmlreader.h",
            "libxml/xmlregexp.h",
            "libxml/xmlsave.h",
            "libxml/xmlschemas.h",
            "libxml/xmlschemastypes.h",
            "libxml/xmlstring.h",
            "libxml/xmlunicode.h",
            "libxml/xmlversion.h",
            "libxml/xmlwriter.h",
            "libxml/xpath.h",
            "libxml/xpathInternals.h",
            "libxml/xpointer.h",
]

pkg_outs(
            libs = ["libxml2.so"],
            hdrs = EXTERNAL_HDRS,
            )

genrule(
        name = "mv_header",
        srcs = glob(["include/libxml/*.h"]),
        outs = EXTERNAL_HDRS,
        cmd = """

        cp    $(location include/libxml/DOCBparser.h)                   $(location libxml/DOCBparser.h)
        cp    $(location include/libxml/HTMLparser.h)                   $(location libxml/HTMLparser.h)
        cp    $(location include/libxml/HTMLtree.h)                     $(location libxml/HTMLtree.h)
        cp    $(location include/libxml/SAX.h)                          $(location libxml/SAX.h)
        cp    $(location include/libxml/SAX2.h)                         $(location libxml/SAX2.h)
        cp    $(location include/libxml/c14n.h)                         $(location libxml/c14n.h)
        cp    $(location include/libxml/catalog.h)                      $(location libxml/catalog.h)
        cp    $(location include/libxml/chvalid.h)                      $(location libxml/chvalid.h)
        cp    $(location include/libxml/debugXML.h)                     $(location libxml/debugXML.h)
        cp    $(location include/libxml/dict.h)                         $(location libxml/dict.h)
        cp    $(location include/libxml/encoding.h)                     $(location libxml/encoding.h)
        cp    $(location include/libxml/entities.h)                     $(location libxml/entities.h)
        cp    $(location include/libxml/globals.h)                      $(location libxml/globals.h)
        cp    $(location include/libxml/hash.h)                         $(location libxml/hash.h)
        cp    $(location include/libxml/list.h)                         $(location libxml/list.h)
        cp    $(location include/libxml/nanoftp.h)                      $(location libxml/nanoftp.h)
        cp    $(location include/libxml/nanohttp.h)                     $(location libxml/nanohttp.h)
        cp    $(location include/libxml/parser.h)                       $(location libxml/parser.h)
        cp    $(location include/libxml/parserInternals.h)              $(location libxml/parserInternals.h)
        cp    $(location include/libxml/pattern.h)                      $(location libxml/pattern.h)
        cp    $(location include/libxml/relaxng.h)                      $(location libxml/relaxng.h)
        cp    $(location include/libxml/schemasInternals.h)             $(location libxml/schemasInternals.h)
        cp    $(location include/libxml/schematron.h)                   $(location libxml/schematron.h)
        cp    $(location include/libxml/threads.h)                      $(location libxml/threads.h)
        cp    $(location include/libxml/tree.h)                         $(location libxml/tree.h)
        cp    $(location include/libxml/uri.h)                          $(location libxml/uri.h)
        cp    $(location include/libxml/valid.h)                        $(location libxml/valid.h)
        cp    $(location include/libxml/xinclude.h)                     $(location libxml/xinclude.h)
        cp    $(location include/libxml/xlink.h)                        $(location libxml/xlink.h)
        cp    $(location include/libxml/xmlIO.h)                        $(location libxml/xmlIO.h)
        cp    $(location include/libxml/xmlautomata.h)                  $(location libxml/xmlautomata.h)
        cp    $(location include/libxml/xmlerror.h)                     $(location libxml/xmlerror.h)
        cp    $(location include/libxml/xmlexports.h)                   $(location libxml/xmlexports.h)
        cp    $(location include/libxml/xmlmemory.h)                    $(location libxml/xmlmemory.h)
        cp    $(location include/libxml/xmlmodule.h)                    $(location libxml/xmlmodule.h)
        cp    $(location include/libxml/xmlreader.h)                    $(location libxml/xmlreader.h)
        cp    $(location include/libxml/xmlregexp.h)                    $(location libxml/xmlregexp.h)
        cp    $(location include/libxml/xmlsave.h)                      $(location libxml/xmlsave.h)
        cp    $(location include/libxml/xmlschemas.h)                   $(location libxml/xmlschemas.h)
        cp    $(location include/libxml/xmlschemastypes.h)              $(location libxml/xmlschemastypes.h)
        cp    $(location include/libxml/xmlstring.h)                    $(location libxml/xmlstring.h)
        cp    $(location include/libxml/xmlunicode.h)                   $(location libxml/xmlunicode.h)
        cp    $(location include/libxml/xmlversion.h)                   $(location libxml/xmlversion.h)
        cp    $(location include/libxml/xmlwriter.h)                    $(location libxml/xmlwriter.h)
        cp    $(location include/libxml/xpath.h)                        $(location libxml/xpath.h)
        cp    $(location include/libxml/xpathInternals.h)               $(location libxml/xpathInternals.h)
        cp    $(location include/libxml/xpointer.h)                     $(location libxml/xpointer.h)

        """,

)

qnap_cc_library(
            name = "libxml2.so",
            srcs = [
                    "SAX.c",
                    "entities.c",
                    "encoding.c",
                    "error.c",
                    "parserInternals.c",
                    "parser.c",
                    "tree.c",
                    "hash.c",
                    "list.c",
                    "xmlIO.c",
                    "xmlmemory.c",
                    "uri.c",
                    "valid.c",
                    "xlink.c",
                    "HTMLparser.c",
                    "HTMLtree.c",
                    "debugXML.c",
                    "xpath.c",
                    "xpointer.c",
                    "xinclude.c",
                    "nanohttp.c",
                    "nanoftp.c",
                    "catalog.c",
                    "globals.c",
                    "threads.c",
                    "c14n.c",
                    "xmlstring.c",
                    "buf.c",
                    "xmlregexp.c",
                    "xmlschemas.c",
                    "xmlschemastypes.c",
                    "xmlunicode.c",
                    "xmlreader.c",
                    "relaxng.c",
                    "dict.c",
                    "SAX2.c",
                    "xmlwriter.c",
                    "legacy.c",
                    "chvalid.c",
                    "pattern.c",
                    "xmlsave.c",
                    "xmlmodule.c",
                    "schematron.c",
                    "xzlib.c",

                    "//external:zlib-so-latest",
            ],
            copts = ["-DLIBXML_THREAD_ENABLED"],
            deps = [
                    "//external:zlib-hdr-latest",
                    ":special_ext",
                    ],
)

cc_library(
            name = "special_ext",
            hdrs = [
                "trionan.c",
            ],
)
