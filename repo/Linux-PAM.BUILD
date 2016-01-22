package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs", "qnap_cc_library", "qnap_cc_binary",)

EXTERNAL_HDRS = [
            "security/pam_client.h",
            "security/pam_misc.h",
            "security/pam_filter.h",
            "security/pam_appl.h",
            "security/_pam_compat.h",
            "security/pam_ext.h",
            "security/_pam_macros.h",
            "security/pam_modules.h",
            "security/pam_modutil.h",
            "security/_pam_types.h",
]

pkg_outs(
            libs = ["libpam.so", "libpamc.so", "libpam_misc.so"],
            hdrs = EXTERNAL_HDRS,
            )

COPT_MACRO = ["-DLIBPAM_COMPILE", "-DWITH_SELINUX", '-DPAM_VERSION=\\"0.99.7.1\\"', '-DDEFAULT_MODULE_PATH=\\"/lib/security/\\"']

genrule(
        name = "mv_hdrs",
        srcs = [
            "libpamc/include/security/pam_client.h",
            "libpam_misc/include/security/pam_misc.h",
            "modules/pam_filter/pam_filter.h",
            "libpam/include/security/pam_appl.h",
            "libpam/include/security/_pam_compat.h",
            "libpam/include/security/pam_ext.h",
            "libpam/include/security/_pam_macros.h",
            "libpam/include/security/pam_modules.h",
            "libpam/include/security/pam_modutil.h",
            "libpam/include/security/_pam_types.h",
        ],
        outs = EXTERNAL_HDRS,
        cmd = """
            cp -r $(location libpamc/include/security/pam_client.h)     $(location security/pam_client.h)
            cp -r $(location libpam_misc/include/security/pam_misc.h)   $(location security/pam_misc.h)
            cp -r $(location modules/pam_filter/pam_filter.h)           $(location security/pam_filter.h)
            cp -r $(location libpam/include/security/pam_appl.h)        $(location security/pam_appl.h)
            cp -r $(location libpam/include/security/_pam_compat.h)     $(location security/_pam_compat.h)
            cp -r $(location libpam/include/security/pam_ext.h)         $(location security/pam_ext.h)
            cp -r $(location libpam/include/security/_pam_macros.h)     $(location security/_pam_macros.h)
            cp -r $(location libpam/include/security/pam_modules.h)     $(location security/pam_modules.h)
            cp -r $(location libpam/include/security/pam_modutil.h)     $(location security/pam_modutil.h)
            cp -r $(location libpam/include/security/_pam_types.h)      $(location security/_pam_types.h)
        """,
)

qnap_cc_library(
        name = "libpam.so",
        srcs = [
            "libpam/pam_account.c",
            "libpam/pam_auth.c",
            "libpam/pam_data.c",
            "libpam/pam_delay.c",
            "libpam/pam_dispatch.c",
            "libpam/pam_end.c",
            "libpam/pam_env.c",
            "libpam/pam_handlers.c",
            "libpam/pam_item.c",
            "libpam/pam_misc.c",
            "libpam/pam_password.c",
            "libpam/pam_prelude.c",
            "libpam/pam_session.c",
            "libpam/pam_start.c",
            "libpam/pam_static.c",
            "libpam/pam_strerror.c",
            "libpam/pam_vprompt.c",
            "libpam/pam_syslog.c",
            "libpam/pam_dynamic.c",
            "libpam/pam_audit.c",
            "libpam/pam_modutil_cleanup.c",
            "libpam/pam_modutil_getpwnam.c",
            "libpam/pam_modutil_ioloop.c",
            "libpam/pam_modutil_getgrgid.c",
            "libpam/pam_modutil_getpwuid.c",
            "libpam/pam_modutil_getgrnam.c",
            "libpam/pam_modutil_getspnam.c",
            "libpam/pam_modutil_getlogin.c",
            "libpam/pam_modutil_ingroup.c",
             ],
        copts = COPT_MACRO,
        includes = ["libpam/include"],
)


qnap_cc_library(
        name = "libpamc.so",
        srcs = [
            "libpamc/pamc_client.c",
            "libpamc/pamc_converse.c",
            "libpamc/pamc_load.c",
             ],
        includes = ["libpamc/include", "libpam/include"],
)

qnap_cc_library(
        name = "libpam_misc.so",
        srcs = [
              "libpam_misc/help_env.c",
              "libpam_misc/misc_conv.c",
             ],
        copts = ["-Wno-address"],
        includes = ["libpamc/include", "libpam/include", "libpam_misc/include"],
)
