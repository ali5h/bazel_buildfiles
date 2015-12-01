load("/tools/build_defs/pkg/pkg", "pkg_tar")

package(default_visibility = ["//visibility:public"])

# filegroup(
#     name = "all",
#     srcs = [ "NasPreLib", "SysLib", "NasLib", "SysUtil", "misc"],
# )

filegroup(
    name = "NasLib",
    srcs = [
                "@pam-0.99.7.1//:linux-pam",
        ],
)

filegroup(
    name = "SysUtil",
    srcs = [

                "@thin-provisioning-tools-v0.4.1//:thintools",
                "@fio-2.2.10//:fio",
        ],
)

filegroup(
    name = "misc",
    srcs = [

                "@ncurses-5.5//:nc",
                "@ntfs-3g-1.2412//:ntfs-3g-files",
                "@libffi-3.2.1//:ffi",
                "@zlib-1.2.8//:z",
                "@tiff-4.0.4//:tiff",
    ],
)

filegroup(
    name = "NasPreLib",
    srcs = [

                "@sqlite-3.4.1//:sqlite3",
                # curl-7.43.0
                "@json-c-0.9//:json-c",
                # db-4.6.18
                "@openldap-2.4.33//:openldap",
                "@popt-1.14//:outs",
                # librt.so (libc6)
                "@xmlrpc//:xmlrpc-epi",
                "@eventlog-0.2.7//:evtlog",
                "@libgpg-error-1.6//:gpg-error",
                "@libgcrypt-1.4.3//:gcrypt",
                "@gnutls-2.6.2//:libgnutls",
                # NasLib/libversioning/libuLinux_versioning.so
                # Prebuild mariadb of DataService
        
        ],
)

pkg_tar(
    name = "final",
    files = [":SysUtil", ":misc"],
    extension = "tar.gz",
)

filegroup(
    name = "SysLib",
    srcs = [
# imap-2007e.tar.gz
                "@libmcrypt-2.5.7//:mcrypt",
                "@libcommon-0.98.10.1//:common",
                "@rlog-1.4//:rlog",
                "@jpeg-6b-src//:jpeg",
                "@gdbm-1.8.3//:libgdbm",
                "@libid3tag-0.15.1b//:id3tag",
                "@expat-2.0.1//:expat",
                "@freetype-2.3.7//:freetype",
                "@libxml2-2.9.2//:xml2",
                "@libxslt-1.1.28//:xslt",
                "@libtool-1.5.24//:ltdl",
                "@libupnp-1.6.19//:libupnp",
# @libtirpc-0.3.0//:tirpc
                "@libnfsidmap-0.23//:libnfsidmap",
                "@libgssglue-0.4//:gssglue",
# @librpcsecgss-0.19//:rpcsecgss
                "@libevent-1.4.12-stable//:libevent",
                "@e2fsprogs-1.42.5//:com_err",
                "@glib-2.24.2//:glib",
                "@liboop-1.0//:oop",
                "@ruli-0.33//:ruli",
                "@readline-5.2//:rl",
                "@libusb-1.0.9//:usb-1.0",
                "@libusb-compat-0.1.4//:libusb-compat",
                "@openssl-1.0.1p//:openssl-dev",
                "@postgresql-9.4.4//:pq",
                "@cyrus-sasl-2.1.22//:sasl2",
                "@libtasn1-1.6//:tasn1",
                "@bzip2-1.0.6//:bz2",
# @libnl-1.1.4//:nl
                "@fuse-2.9.2//:libfuse",
# @xmlrpc-c-1.25.28//:xmlrpc
# install i18n
                "@jrtplib-3.3.0//:jrtp",
                "@liblinuxfallocate-glibc-2.17//:linuxfallocate",
                "@libeventfd-glibc-2.17//:eventfd",
                "@libutimensat-glibc-2.17//:utimensat",
                "@libaio-0.3.109//:aio",
                "@boost_1_53_0//:boost",
# graphviz-2.38.0
                "@ImageMagick-6.8.9-9//:IM",
                "@attr-2.4.47//:libattr",
                "@acl-2.2.49//:libacl",
                "@gnupg-1.4.19//:gpg",
                "@cups-1.6.4//:libcups",
                "@gsoap_2.7.17//:gsoap",
# ffmpeg
                "@EtroSDK-src-2.3.3//:EtroSDK",
                "@libcsv-3.0.2//:csv",
                "@librsync-0.9.7//:rsync",

                "@backtrace//:backtrace_tools",

    ],
)
