load("/tools/build_defs/pkg/pkg", "pkg_tar")

package(default_visibility = ["//visibility:public"])

filegroup(
    name = "NasLib",
    srcs = [
                "@Linux-PAM//:outs",
        ],
)

filegroup(
    name = "SysUtil",
    srcs = [

                "@thin-provisioning-tools-v0.4.1//:outs",
                "@fio-2.2.10//:outs",
        ],
)

filegroup(
    name = "misc",
    srcs = [

                "@ncurses-5.5//:outs",
                "@ntfs-3g-1.2412//:outs",
                "@libffi-3.2.1//:outs",
                "@zlib-1.2.8//:outs",
                "@tiff-4.0.4//:outs",
    ],
)

filegroup(
    name = "NasPreLib",
    srcs = [

                "@sqlite-3.4.1//:outs",
                # curl-7.43.0
                "@json-c-0.9//:outs",
                # db-4.6.18
                "@openldap-2.4.33//:outs",
                "@popt-1.14//:outs",
                # librt.so (libc6)
                "@xmlrpc//:outs",
                "@eventlog-0.2.7//:outs",
                "@libgpg-error-1.6//:outs",
                "@libgcrypt-1.4.3//:outs",
                "@gnutls-2.6.2//:outs",
                # NasLib/libversioning/libuLinux_versioning.so
                # Prebuild mariadb of DataService
        
        ],
)

filegroup(
    name = "all_files",
    srcs = ["NasPreLib", "NasLib", "SysLib", "SysUtil", "misc"],
)

pkg_tar(
    name = "final",
    files = ["all_files"],
    extension = "tar.gz",
)

filegroup(
    name = "SysLib",
    srcs = [
                "@krb5-1.13//:outs",

# imap-2007e.tar.gz
                "@libmcrypt-2.5.7//:outs",
                "@libcommon-0.98.10.1//:outs",
                "@rlog-1.4//:outs",
                "@jpeg-6b-src//:outs",
                "@gdbm-1.8.3//:outs",
                "@libid3tag-0.15.1b//:outs",
                "@expat-2.0.1//:outs",
                "@freetype-2.3.7//:outs",
                "@libxml2-2.9.2//:outs",
                "@libxslt-1.1.28//:outs",
                "@libtool-1.5.24//:outs",
                "@libupnp-1.6.19//:outs",
                "@libtirpc-0.3.0//:outs",
                "@libnfsidmap-0.23//:outs",
                "@libgssglue-0.4//:outs",
                "@librpcsecgss-0.19//:outs",
                "@libevent-1.4.12-stable//:outs",
                "@e2fsprogs-1.42.5//:outs",
                "@glib-2.24.2//:outs",
                "@liboop-1.0//:outs",
                "@ruli-0.33//:outs",
                "@readline-5.2//:outs",
                "@libusb-1.0.9//:outs",
                "@libusb-compat-0.1.4//:outs",
                "@openssl-1.0.1p//:outs",
                "@postgresql-9.4.4//:outs",
                "@cyrus-sasl-2.1.22//:outs",
                "@libtasn1-1.6//:outs",
                "@bzip2-1.0.6//:outs",
                "@libnl-1.1.4//:outs",
                "@fuse-2.9.2//:outs",
                "@xmlrpc-c-1.25.28//:outs",
# install i18n
                "@jrtplib-3.3.0//:outs",
                "@liblinuxfallocate-glibc-2.17//:outs",
                "@libeventfd-glibc-2.17//:outs",
                "@libutimensat-glibc-2.17//:outs",
                "@libaio-0.3.109//:outs",
                "@boost_1_53_0//:outs",
# graphviz-2.38.0
                "@ImageMagick-6.8.9-9//:outs",
                "@attr-2.4.47//:outs",
                "@acl-2.2.49//:outs",
                "@gnupg-1.4.19//:outs",
                "@cups-1.6.4//:outs",
                "@gsoap_2.7.17//:outs",
# ffmpeg
                "@EtroSDK-src-2.3.3//:outs",
                "@libcsv-3.0.2//:outs",
                "@librsync-0.9.7//:outs",

                "@backtrace//:outs",

    ],
)
