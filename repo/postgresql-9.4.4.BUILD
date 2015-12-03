package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "pkg_libs", "pkg_exes")
pkg_outs()

pkg_libs([":pq"])
pkg_exes()

EXTERNAL_HDRS = [

            "src/include/c.h",
            "src/interfaces/libpq/libpq-int.h",
            "src/include/libpq/pqcomm.h",
            "src/include/port.h",
            "src/include/postgres_fe.h",
            "src/interfaces/libpq/pqexpbuffer.h",
            "src/interfaces/libpq/libpq-events.h",
            "src/interfaces/libpq/libpq-fe.h",
            "src/include/libpq/libpq-fs.h",
            "src/include/pg_config.h",
            "src/include/pg_config_ext.h",
            "src/include/pg_config_manual.h",
            "src/include/pg_config_os.h",
            "src/include/postgres_ext.h",

                ]
INTERNAL_HDRS = glob(["**/*.h"], EXTERNAL_HDRS)

cc_library(
    name = "pq",
    srcs = [
            "src/interfaces/libpq/fe-auth.c",
            "src/interfaces/libpq/fe-connect.c",
            "src/interfaces/libpq/fe-exec.c",
            "src/interfaces/libpq/fe-misc.c",
            "src/interfaces/libpq/fe-print.c",
            "src/interfaces/libpq/fe-lobj.c",
            "src/interfaces/libpq/fe-protocol2.c",
            "src/interfaces/libpq/fe-protocol3.c",
            "src/interfaces/libpq/pqexpbuffer.c",
            "src/interfaces/libpq/fe-secure.c",
            "src/interfaces/libpq/libpq-events.c",
            "src/port/chklocale.c",
            "src/port/inet_net_ntop.c",
            "src/port/noblock.c",
            "src/port/pgstrcasecmp.c",
            "src/port/pqsignal.c",
            "src/port/thread.c",
            "src/port/getpeereid.c",
            "src/port/strlcpy.c",
            "src/backend/libpq/ip.c",
            "src/backend/libpq/md5.c",
            "src/backend/utils/mb/encnames.c",
            "src/backend/utils/mb/wchar.c",
            ":src/port/pg_config_paths.h",

    ] + INTERNAL_HDRS,
    hdrs = EXTERNAL_HDRS,
    includes = ["src/include", "src/backend", "src/port"],
    copts = ["-D_GNU_SOURCE"],
)

genrule(
    name = "pg_config_paths",
    outs = ["src/port/pg_config_paths.h"],
    cmd = """
            echo "#define PGBINDIR \\"/usr/local/pgsql/bin\\"" >$@
            echo "#define PGSHAREDIR \\"/usr/local/pgsql/share\\"" >>$@
            echo "#define SYSCONFDIR \\"/usr/local/pgsql/etc\\"" >>$@
            echo "#define INCLUDEDIR \\"/usr/local/pgsql/include\\"" >>$@
            echo "#define PKGINCLUDEDIR \\"/usr/local/pgsql/include\\"" >>$@
            echo "#define INCLUDEDIRSERVER \\"/usr/local/pgsql/include/server\\"" >>$@
            echo "#define LIBDIR \\"/usr/local/pgsql/lib\\"" >>$@
            echo "#define PKGLIBDIR \\"/usr/local/pgsql/lib\\"" >>$@
            echo "#define LOCALEDIR \\"/usr/local/pgsql/share/locale\\"" >>$@
            echo "#define DOCDIR \\"/usr/local/pgsql/share/doc\\"" >>$@
            echo "#define HTMLDIR \\"/usr/local/pgsql/share/doc\\"" >>$@
            echo "#define MANDIR \\"/usr/local/pgsql/share/man\\"" >>$@
    """,
)
