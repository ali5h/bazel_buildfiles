#load("extension", "add_package")

# can be reference by //external:zlib-latest
bind(
    name = "zlib-latest",
    actual = "@zlib-1.2.8//:z",
)
new_local_repository(
    name = "zlib-1.2.8",
    path = "/root/NasX86/SysLib/zlib-1.2.8",
    build_file = "repo/zlib-1.2.8.BUILD",
)

bind(
    name = "popt-latest",
    actual = "@popt-1.14//:popt",
)
new_local_repository(
    name = "popt-1.14",
    path = "/root/NasX86/SysLib/popt-1.14",
    build_file = "repo/popt-1.14.BUILD",
)

new_local_repository(
    name = "libid3tag-0.15.1b",
    path = "/root/NasX86/SysLib/libid3tag-0.15.1b",
    build_file = "repo/libid3tag-0.15.1b.BUILD",
)

new_local_repository(
    name = "json-c-0.9",
    path = "/root/NasX86/SysLib/json-c-0.9",
    build_file = "repo/json-c-0.9.BUILD",
)

new_local_repository(
    name = "sqlite-3.4.1",
    path = "/root/NasX86/SysLib/sqlite-3.4.1",
    build_file = "repo/sqlite-3.4.1.BUILD",
)
#add_package(name = "sqlite3", path = "/root/NasX86/SysLib/sqlite-3.4.1", lib_name="sqlite3")


new_local_repository(
    name = "thin-provisioning-tools-v0.4.1",
    path = "/root/NasX86/SysUtil/thin-provisioning-tools-v0.4.1",
    build_file = "repo/thin-provisioning-tools-v0.4.1.BUILD",
)

bind(
    name = "libaio-latest",
    actual = "@libaio-0.3.109//:aio",
)
new_local_repository(
    name = "libaio-0.3.109",
    path = "/root/NasX86/SysLib/libaio-0.3.109",
    build_file = "repo/libaio-0.3.109.BUILD",
)

bind(
    name = "boost-latest",
    actual = "@boost_1_59_0//:boost",
)
new_local_repository(
    name = "boost_1_58_0",
    path = "/root/NasX86/SysLib/boost_1_58_0",
    build_file = "repo/boost_1_58_0.BUILD",
)
new_local_repository(
    name = "boost_1_59_0",
    path = "/root/NasX86/SysLib/boost_1_59_0",
    build_file = "repo/boost_1_59_0.BUILD",
)

bind(
    name = "expat-latest",
    actual = "@expat-2.0.1//:expat",
)
new_local_repository(
    name = "expat-2.0.1",
    path = "/root/NasX86/SysLib/expat-2.0.1",
    build_file = "repo/expat-2.0.1.BUILD",
)

new_local_repository(
    name = "fio-2.0.11",
    path = "/root/NasX86/SysUtil/fio-2.0.11",
    build_file = "repo/fio-2.0.11.BUILD",
)

new_local_repository(
    name = "xmlrpc",
    path = "/root/NasX86/SysLib/xmlrpc",
    build_file = "repo/xmlrpc.BUILD",
)

new_local_repository(
    name = "libxml2-2.9.2",
    path = "/root/NasX86/SysLib/libxml2-2.9.2",
    build_file = "repo/libxml2-2.9.2.BUILD",
)

new_local_repository(
    name = "eventlog-0.2.7",
    path = "/root/NasX86/SysLib/eventlog-0.2.7",
    build_file = "repo/eventlog-0.2.7.BUILD",
)

new_local_repository(
    name = "rlog-1.4",
    path = "/root/NasX86/SysLib/rlog-1.4",
    build_file = "repo/rlog-1.4.BUILD",
)

new_local_repository(
    name = "jpeg-6b-src",
    path = "/root/NasX86/SysLib/jpeg-6b-src",
    build_file = "repo/jpeg-6b-src.BUILD",
)

new_local_repository(
    name = "libevent-1.4.12-stable",
    path = "/root/NasX86/SysLib/libevent-1.4.12-stable",
    build_file = "repo/libevent-1.4.12-stable.BUILD",
)

new_local_repository(
    name = "pam-0.99.7.1",
    path = "/root/NasX86/SysLib/pam-0.99.7.1/Linux-PAM",
    build_file = "repo/pam-0.99.7.1.BUILD",
)

new_local_repository(
    name = "libffi-3.2.1",
    path = "/root/NasX86/SysLib/libffi-3.2.1",
    build_file = "repo/libffi-3.2.1.BUILD",
)

# # SYS_LIBRARY
# PCRE = $(SYSLIB_DIR)/pcre-8.36
# LIBGCC = $(SYSLIB_DIR)/gcc-4.9.2
# FLEX = $(SYSLIB_DIR)/flex-2.5.39
# LIBSTDCXX = $(SYSLIB_DIR)/libstdcxx
# BERKELEY_DB = $(SYSLIB_DIR)/db-4.8.30
# LIBICONV = $(SYSLIB_DIR)/libiconv-1.12
# LIBGPG_ERROR = $(SYSLIB_DIR)/libgpg-error-1.6
# LIBGCRYPT = $(SYSLIB_DIR)/libgcrypt-1.4.3
# GNUTLS = $(SYSLIB_DIR)/gnutls-2.6.2
# GDBM = $(SYSLIB_DIR)/gdbm-1.11
# FREETYPE = $(SYSLIB_DIR)/freetype-2.3.7
# NETTLE = $(SYSLIB_DIR)/nettle-2.7.1
# LIBUPNP = $(SYSLIB_DIR)/libupnp-1.6.19
# KRB5 = $(SYSLIB_DIR)/krb5-1.13
# LIBTIRPC = $(SYSLIB_DIR)/libtirpc-0.2.5
# LIBNFSIDMAP = $(SYSLIB_DIR)/libnfsidmap-0.25
# LIBGSSGLUE = $(SYSLIB_DIR)/libgssglue-0.4
# LIBRPCSECGSS = $(SYSLIB_DIR)/librpcsecgss-0.19
# READLINE = $(SYSLIB_DIR)/readline-5.2
# LIBUSB = $(SYSLIB_DIR)/libusb-1.0.9
# LIBUSB_COMPAT = $(SYSLIB_DIR)/libusb-compat-0.1.4
# NCURSES = $(SYSLIB_DIR)/ncurses-5.5
# POSTGRES = $(SYSLIB_DIR)/postgres
# LIBTASN1 = $(SYSLIB_DIR)/libtasn1-1.6
# LIBNL = $(SYSLIB_DIR)/libnl-1.1.4
# FUSE = $(SYSLIB_DIR)/fuse-2.9.2
# OPENLDAP = $(SYSLIB_DIR)/openldap-2.4.33
# NTFS_3G = $(SYSLIB_DIR)/ntfs-3g-1.2412
# LIBLINUXFALLOCATE = $(SYSLIB_DIR)/liblinuxfallocate-glibc-2.17
# JRTPLIB = $(SYSLIB_DIR)/jrtplib-3.8.2
# LIBEVENTFD = $(SYSLIB_DIR)/libeventfd-glibc-2.17
# LIBUTIMENSAT = $(SYSLIB_DIR)/libutimensat-glibc-2.17
# LIBAIO = $(SYSLIB_DIR)/libaio-0.3.109
# IMAGEMAGICK = $(SYSLIB_DIR)/ImageMagick-6.6.1-5
# ATTR = $(SYSLIB_DIR)/attr-2.4.47
# ACL = $(SYSLIB_DIR)/acl-2.2.52
# LIBRSYNC = $(SYSLIB_DIR)/librsync-0.9.7
# LIBCSV = $(SYSLIB_DIR)/libcsv-3.0.2
# ETROSDK = $(SYSLIB_DIR)/EtroSDK-src-2.3.3
# FFMPEG = $(SYSLIB_DIR)/ffmpeg
# GSOAP = $(SYSLIB_DIR)/gsoap_2.7.17
# LIBIDN = $(SYSLIB_DIR)/libidn-1.25
# CUPS = $(SYSLIB_DIR)/cups-1.6.4
# GNUPG = $(SYSLIB_DIR)/gnupg-1.4.13
# OPENSSL = $(SYSLIB_DIR)/openssl-1.0.1g
# E2FSPROGS = $(SYSLIB_DIR)/e2fsprogs-1.42.5
# CYRUS = $(SYSLIB_DIR)/cyrus-sasl-2.1.22
# GLIB = $(SYSLIB_DIR)/glib-2.24.2
# LIBOOP = $(SYSLIB_DIR)/liboop-1.0
# RULI = $(SYSLIB_DIR)/ruli-0.33
# LIBXSLT = $(SYSLIB_DIR)/libxslt-1.1.22
# GD = $(SYSLIB_DIR)/gd-2.0.34
# LIBPNG = $(SYSLIB_DIR)/libpng-1.2.15
# GIFLIB = $(SYSLIB_DIR)/giflib-4.1.3
# LIBUUID = $(SYSLIB_DIR)/libuuid-1.0.3
# LIBCOMMON = $(SYSLIB_DIR)/libcommon-0.98.10.1

# # NAS_LIBRARY
# QNSS2COMLIB = $(NASLIB_DIR)/ComLib/Nss2ComLib
# QADDC = $(NASLIB_DIR)/addc
# QCGI = $(NASLIB_DIR)/cgi
# QCLOUD3P_NASLIB = $(NASLIB_DIR)/cloud3p_naslib
# QCONFIG = $(NASLIB_DIR)/config
# QHAL = $(NASLIB_DIR)/hal
# QHD = $(NASLIB_DIR)/hd
# QIMR = $(NASLIB_DIR)/ImR
# QINI_CONFIG = $(NASLIB_DIR)/ini_config
# QLDAP = $(NASLIB_DIR)/ldap
# QLIBAN = $(NASLIB_DIR)/liban
# QLIBBT = $(NASLIB_DIR)/libbt-1.0.0
# QLIBGMAILBACKUP = $(NASLIB_DIR)/libgmailbackup-1.0.0
# QLIBMS = $(NASLIB_DIR)/libms-1.0.0
# QLIBNASACL = $(NASLIB_DIR)/libnasacl-1.0.0
# QLIBNASAUTH = $(NASLIB_DIR)/libnasauth-1.0.0
# QLIBNASLOG = $(NASLIB_DIR)/libnaslog-2.0.0
# QLIBNASPRIV = $(NASLIB_DIR)/libnaspriv
# QLIBPOWER_CLEAN = $(NASLIB_DIR)/libpower_clean
# QLIBQBOX = $(NASLIB_DIR)/libqbox
# QLIBQDNS = $(NASLIB_DIR)/libqdns
# QLIBVERSIONING = $(NASLIB_DIR)/libversioning
# QNAS = $(NASLIB_DIR)/NAS
# QNVRLC = $(NASLIB_DIR)/nvrlc
# QNVRLOG = $(NASLIB_DIR)/nvrlog
# QPAM_QAUTH = $(NASLIB_DIR)/pam_qauth
# QPDC = $(NASLIB_DIR)/pdc
# #QPLATFORM = $(NASLIB_DIR)/platform
# QCLOUD = $(NASLIB_DIR)/qcloud
# QHA = $(NASLIB_DIR)/qha
# QLIBLICENSE = $(NASLIB_DIR)/qlicense
# QLIBLICENSE2 = $(NASLIB_DIR)/qlicense2
# QODS = $(NASLIB_DIR)/ods
# QQUOTA = $(NASLIB_DIR)/quota
# QREPLICATION_LIBLUNPORT = $(NASLIB_DIR)/replication/liblunport
# QREPLICATION_LIBRARY = $(NASLIB_DIR)/replication/library
# QREPLICATION_LIBQSYNC = $(NASLIB_DIR)/replication/libqsync
# QSTATISTICS = $(NASLIB_DIR)/statistics
# # QSTORAGE = $(NASLIB_DIR)/storage
# # QSTORAGE_201 = $(NASLIB_DIR)/storage_201
# # QSTORAGE_509 = $(NASLIB_DIR)/storage_509
# # QSTORAGE_MAN = $(NASLIB_DIR)/storage_man
# QSTORAGE_MAN_V2 = $(NASLIB_DIR)/storage_man_v2
# QUTIL = $(NASLIB_DIR)/util

# # SYS_UTIL
# MARIADB = $(SYSUTIL_DIR)/mariadb-5.5.40
# SAMBA = $(SYSUTIL_DIR)/samba-4.0.5
# NFS_UTILS = $(SYSUTIL_DIR)/nfs-utils-1.2.5
# NETATALK = $(SYSUTIL_DIR)/netatalk-3.0.5
# DRBD = $(SYSUTIL_DIR)/drbd-8.4.5
# DRBD_UTIL = $(SYSUTIL_DIR)/drbd-utils-8.9.0
# PROFTPD = $(SYSUTIL_DIR)/proftpd-1.3.5
# # CRMSH = $(SYSUTIL_DIR)/crmsh-1.2.6
# GREP = $(SYSUTIL_DIR)/grep-2.5.1
# LXML = $(SYSUTIL_DIR)/lxml-3.2.3
# # PACEMAKER = $(SYSUTIL_DIR)/pacemaker-1.1.10
# PSMISC = $(SYSUTIL_DIR)/psmisc-22.20
# UTIL_LINUX = $(SYSUTIL_DIR)/util-linux-2.19
# # COROSYNC = $(SYSUTIL_DIR)/corosync-1.4.6
# GLUE = $(SYSUTIL_DIR)/glue-1.0.11
# LIBQB = $(SYSUTIL_DIR)/libqb-0.16.0
# # PROCPS = $(SYSUTIL_DIR)/procps-3.2.8
# PROCPS_NG = $(SYSUTIL_DIR)/procps-ng-3.3.10
# RESOURCE_AGENTS = $(SYSUTIL_DIR)/resource-agents-3.9.5
# BBCP = $(SYSUTIL_DIR)/bbcp
# BASH = $(SYSUTIL_DIR)/bash-3.2
# BUSYBOX = $(SYSUTIL_DIR)/busybox-1.01
# MLOCATE = $(SYSUTIL_DIR)/mlocate-0.25
# USBUTILS = $(SYSUTIL_DIR)/usbutils-0.72
# MT_DAAPD = $(SYSUTIL_DIR)/mt-daapd-svn-1696
# APCUPSD = $(SYSUTIL_DIR)/apcupsd-3.14.10
# SG3_UTILS = $(SYSUTIL_DIR)/sg3_utils-1.32
# EZ_IPUPDATE = $(SYSUTIL_DIR)/ez-ipupdate-3.0.10
# PORTMAP = $(SYSUTIL_DIR)/portmap_6.0
# RPCBIND = $(SYSUTIL_DIR)/rpcbind-0.2.0
# COREUTILS = $(SYSUTIL_DIR)/coreutils-6.7
# TAR = $(SYSUTIL_DIR)/tar-1.22
# UNRAR = $(SYSUTIL_DIR)/unrarsrc-3.6.8
# BZIP2 = $(SYSUTIL_DIR)/bzip2-1.0.6
# DHCPCD = $(SYSUTIL_DIR)/dhcpcd-1.3.22-p14
# DHCP = $(SYSUTIL_DIR)/dhcpv6-1.1.0
# WGET = $(SYSUTIL_DIR)/wget-1.11.4
# OPENSSH = $(SYSUTIL_DIR)/openssh-6.7p1
# ETHTOOL = $(SYSUTIL_DIR)/ethtool-6
# INOTIFY_TOOLS = $(SYSUTIL_DIR)/inotify-tools-3.14
# CIFS_UTILS = $(SYSUTIL_DIR)/cifs-utils-5.6
# ACPID = $(SYSUTIL_DIR)/acpid-1.0.6
# VIM = $(SYSUTIL_DIR)/vim72
# LVM2 = $(SYSUTIL_DIR)/LVM2.2.02.105
# THIN_PROVISION_TOOL = $(SYSUTIL_DIR)/thin-provisioning-tool-v0.2.7
# RICHACL_TOOL = $(SYSUTIL_DIR)/richacl-tools
# CRYPTSETUP = $(SYSUTIL_DIR)/cryptsetup-1.5.1
# PARTED_3_1 = $(SYSUTIL_DIR)/parted-3.1
# PARTED_2_2 = $(SYSUTIL_DIR)/parted-2.2
# HOTPLUG = $(SYSUTIL_DIR)/hotplug-2004_03_29
# LINUXIGD = $(SYSUTIL_DIR)/linux-igd-1.0
# SDDPD = $(SYSUTIL_DIR)/sddpd-1.0
# SHADOW = $(SYSUTIL_DIR)/shadow-4.1.4
# # ENCFS = $(SYSUTIL_DIR)/encfs-1.7.4
# KEYUTILS = $(SYSUTIL_DIR)/keyutils-1.2
# ECRYPTFS_UTILS = $(SYSUTIL_DIR)/ecryptfs-utils-74
# NUT = $(SYSUTIL_DIR)/nut-2.6.5
# ZIP = $(SYSUTIL_DIR)/zip30
# P7ZIP = $(SYSUTIL_DIR)/p7zip_9.04
# DJMOUNT = $(SYSUTIL_DIR)/djmount-0.71
# RSYSLOG = $(SYSUTIL_DIR)/rsyslog-4.4.2
# MINIUPNPC = $(SYSUTIL_DIR)/miniupnpc-1.5.20110314
# NATPMP = $(SYSUTIL_DIR)/libnatpmp-20110103
# FREERADIUS = $(SYSUTIL_DIR)/freeradius-server-2.2.0
# AUMIX = $(SYSUTIL_DIR)/aumix-2.9.1
# CENTERIM = $(SYSUTIL_DIR)/centerim-4.22.10
# TZCODE = $(SYSUTIL_DIR)/zoneinfo/tzcode
# NETKIT_FTP = $(SYSUTIL_DIR)/netkit-ftp-0.17
# SCREEN = $(SYSUTIL_DIR)/screen-4.0.3
# WPA_SUPPLICANT = $(SYSUTIL_DIR)/wpa_supplicant-0.6.10/wpa_supplicant
# WIRELESS_TOOLS = $(SYSUTIL_DIR)/wireless_tools.29
# VLAN = $(SYSUTIL_DIR)/vlan
# UDEV = $(SYSUTIL_DIR)/udev-140
# LSIUTIL = $(SYSUTIL_DIR)/lsiutil-1.60
# CLAMAV = $(SYSUTIL_DIR)/clamav-0.98.4
# SYSVINIT = $(SYSUTIL_DIR)/sysvinit-2.88dsf
# OPENTFTP = $(SYSUTIL_DIR)/opentftp-1.62
# IPROUTE2 = $(SYSUTIL_DIR)/iproute2-2.6.39
# NSSLDAP = $(SYSUTIL_DIR)/nss_ldap-265
# LIBSMBPW = $(SYSUTIL_DIR)/libsmbpw-1.3
# PPP = $(SYSUTIL_DIR)/ppp-2.4.5
# PPTPD = $(SYSUTIL_DIR)/pptpd-1.4.0
# IPTABLES = $(SYSUTIL_DIR)/iptables-1.4.12
# LZO = $(SYSUTIL_DIR)/lzo-2.05
# MKNTPWD = $(SYSUTIL_DIR)/mkntpwd
# DMIDECODE = $(SYSUTIL_DIR)/dmidecode-2.11
# INTLTOOL = $(SYSUTIL_DIR)/intltool-0.41.1
# LIBDAEMON = $(SYSUTIL_DIR)/libdaemon-0.14
# DBUS = $(SYSUTIL_DIR)/dbus-1.4.16
# AVAHI = $(SYSUTIL_DIR)/avahi-0.6.30
# LSOF = $(SYSUTIL_DIR)/lsof_4.85
# MULTIPATH_TOOL = $(SYSUTIL_DIR)/multipath-tools-0.4.9
# IOSTAT = $(SYSUTIL_DIR)/iostat-2.2
# DCRAW = $(SYSUTIL_DIR)/dcraw
# ALSA_LIB = $(SYSUTIL_DIR)/alsa-lib-1.0.27.2
# BLUEZ = $(SYSUTIL_DIR)/bluez-4.60
# ALSA_UTILS = $(SYSUTIL_DIR)/alsa-utils-1.0.27.2
# NEON = $(SYSUTIL_DIR)/neon-0.30.0
# DAVFS2 = $(SYSUTIL_DIR)/davfs2-1.5.0
# CURLFTPFS = $(SYSUTIL_DIR)/curlftpfs-0.9.2
# CURL = $(SYSUTIL_DIR)/curl-7.21.0
# QRENCODE = $(SYSUTIL_DIR)/qrencode-3.4.4
# PYTHON = $(SYSUTIL_DIR)/Python-2.7.5
# SYSTEMTAP = $(SYSUTIL_DIR)/systemtap-2.6
# ELFUTILS = $(SYSUTIL_DIR)/elfutils-0.161
# NTP_DEV = $(SYSUTIL_DIR)/ntp-dev-4.2.7p422
# STUNNEL = $(SYSUTIL_DIR)/stunnel-4.32
# LPR = $(SYSUTIL_DIR)/lpr-0.72
# TZOUPDATE = $(SYSUTIL_DIR)/tzoupdate-1.12
# NET_SNMP = $(SYSUTIL_DIR)/net-snmp-5.5
# ZFS_FUSE = $(SYSUTIL_DIR)/zfs-fuse-0.5.0
# RSYNC = $(SYSUTIL_DIR)/rsync-3.0.7
# LIBTRASH = $(SYSUTIL_DIR)/libtrash-2.4
# GENPOWER = $(SYSUTIL_DIR)/genpower-1.0.2
# NOIP = $(SYSUTIL_DIR)/noip-2.1.7
# OPENVPN = $(SYSUTIL_DIR)/openvpn-2.3.6
# CLOUD3P_SYSUTIL = $(SYSUTIL_DIR)/cloud3p_sysutil
# TWONKYMEDIA = $(SYSUTIL_DIR)/TwonkyMedia

# # NAS_UTIL
# QNAS_CONSOLE_INSTALL = $(NASUTIL_DIR)/qnas_console_install
# QTEST_UTIL = $(NASUTIL_DIR)/test_util
# QLCDMOND = $(NASUTIL_DIR)/lcdmond
# QNETWATCHDOG = $(NASUTIL_DIR)/netwatchdog
# QADDSHARE = $(NASUTIL_DIR)/addshare
# QBCCLIENT = $(NASUTIL_DIR)/bcclient
# QBTTOOLS = $(NASUTIL_DIR)/bttools
# QDAEMON_MGR = $(NASUTIL_DIR)/daemon_mgr
# QDAEMON_MGR_NVR = $(NASUTIL_DIR)/daemon_mgr.nvr
# QGEN_HOSTNAME = $(NASUTIL_DIR)/gen_hostname
# QGET_TIME = $(NASUTIL_DIR)/get_time
# QGETCFG = $(NASUTIL_DIR)/getcfg
# QGETBINDADDR = $(NASUTIL_DIR)/getbindaddr
# QSMBTOOLS = $(NASUTIL_DIR)/smbtools
# QSETCFG = $(NASUTIL_DIR)/setcfg
# QHDSUSPEND = $(NASUTIL_DIR)/hdsuspend
# QETH_UTIL = $(NASUTIL_DIR)/eth_util
# QPC1 = $(NASUTIL_DIR)/PC1
# QNASUTIL = $(NASUTIL_DIR)/nasutil
# QNTPDATED = $(NASUTIL_DIR)/ntpdated
# QRANDOM_MAC = $(NASUTIL_DIR)/random_mac
# QJHEAD = $(NASUTIL_DIR)/jhead-2.87
# QBUTTON_TEST = $(NASUTIL_DIR)/button_test
# QIMRD = $(NASUTIL_DIR)/ImRd
# QIMR_ALL = $(NASUTIL_DIR)/ImR_all
# QFIRM_SRV = $(NASUTIL_DIR)/firm_srv
# QGPIO_TEST = $(NASUTIL_DIR)/gpio_test
# QUPS_YEC = $(NASUTIL_DIR)/ups_yec
# QRECYCLE = $(NASUTIL_DIR)/recycle
# QCHANGEPASSWD = $(NASUTIL_DIR)/changepasswd
# QLOGTOOLS = $(NASUTIL_DIR)/logtools
# QLOGENGINE = $(NASUTIL_DIR)/qLogEngine
# QSYSLOGD = $(NASUTIL_DIR)/qsyslogd
# QNAS_LOG = $(NASUTIL_DIR)/nas_log
# QFAN_TEST = $(NASUTIL_DIR)/fan_test
# QUPSUTIL = $(NASUTIL_DIR)/upsutil
# QWATCHDOGD = $(NASUTIL_DIR)/qwatchdogd
# QSHIELD = $(NASUTIL_DIR)/qShield
# QSMS_SENDER = $(NASUTIL_DIR)/sms_sender
# QMKSDNOD = $(NASUTIL_DIR)/mksdnod
# QUSER_CMD = $(NASUTIL_DIR)/user_cmd
# QVHOST_UTIL = $(NASUTIL_DIR)/vhost_util
# QISO_CHECK = $(NASUTIL_DIR)/iso_check
# QREPLICATION_LUNPORTER = $(NASUTIL_DIR)/replication/lunporter
# QREPLICATION_QHASYNC = $(NASUTIL_DIR)/replication/qHAsync
# QREPLICATION_QMONITOR = $(NASUTIL_DIR)/replication/qmonitor
# QREPLICATION_QSNAPD = $(NASUTIL_DIR)/replication/qsnapd
# QREPLICATION_QSYNC = $(NASUTIL_DIR)/replication/qsync
# QDEGRADE_CHECK = $(NASUTIL_DIR)/degrade_check
# QE2FSPROG_EVENT = $(NASUTIL_DIR)/qe2fsprog_event
# QCLOUD3P_NASUTIL = $(NASUTIL_DIR)/cloud3p_nasutil
# QRCVY_SHARE = $(NASUTIL_DIR)/rcvy_share
# QPOWER_CLEAN = $(NASUTIL_DIR)/power_clean
# QSDMD = $(NASUTIL_DIR)/sdmd
# QDMC = $(NASUTIL_DIR)/qDmc
# QDAVMIGRATE = $(NASUTIL_DIR)/davmigrate
# QISCSIUTIL_LIO = $(NASUTIL_DIR)/iscsiutil_lio
# QFBUTIL = $(NASUTIL_DIR)/fbutil
# QMODAGENT = $(NASUTIL_DIR)/modagent
# QLOGAGENT = $(NASUTIL_DIR)/qlogagent
# QODS_UTIL = $(NASUTIL_DIR)/ods_util
# QVDD_CONTROL = $(NASUTIL_DIR)/vdd_control
# QSYSLOG_MAILD = $(NASUTIL_DIR)/syslog_maild
# QFLV_CONVERTD = $(NASUTIL_DIR)/flv_convertd
# QLICENSE2 = $(NASUTIL_DIR)/qlicense2_util
# QLICENSE2_AES = $(NASUTIL_DIR)/qlicense2_util/aes
# QDDNS_UPDATE = $(NASUTIL_DIR)/qddns_update
# QHAL_UTIL = $(NASUTIL_DIR)/hal_util
# QSTORAGE_UTIL = $(NASUTIL_DIR)/storage_util
# QSAS_UPDATER = $(NASUTIL_DIR)/sas_updater
# QRM = $(NASUTIL_DIR)/qrm
# QFLASHCACHE_UTIL = $(NASUTIL_DIR)/flashcache_util
# QCLI = $(NASUTIL_DIR)/qcli
# QCFG = $(NASUTIL_DIR)/qcfg
# QFSTRIM = $(NASUTIL_DIR)/qfstrim
# QSTORAGE_TOOL = $(NASUTIL_DIR)/storage_tool
# QVERSIOND = $(NASUTIL_DIR)/versiond
# QBOX_LOGD = $(NASUTIL_DIR)/qbox_logd
# QBOX_MARIADB = $(NASUTIL_DIR)/qbox_mariadb
# QBOXD = $(NASUTIL_DIR)/qboxd
# QQR_GENERATOR = $(NASUTIL_DIR)/qr_generator
# QUPNPCD = $(NASUTIL_DIR)/upnpcd

#--------------------------------------------------------------
# Dependencies definition
#--------------------------------------------------------------

# #third party drivers
# $(CRYPTODEV): $(KERNEL_VER_DIR)

# #SYS_LIBRARY
# $(ACL): $(ATTR)
# $(XMLRPC): $(EXPAT) $(LIBICONV)
# $(LIBGCRYPT): $(LIBGPG_ERROR)
# $(GNUTLS): $(LIBGCRYPT)
# $(LIBID3TAG): $(ZLIB)
# $(OPENLDAP): $(BERKELEY_DB) $(OPENSSL) $(LIBUUID)
# $(LIBRPCSECGSS): $(KRB5) $(LIBGSSGLUE)
# $(LIBOOP): $(GLIB)
# $(GLIB): $(ZLIB) $(LIBICONV)
# $(RULI): $(LIBOOP) 
# $(LIBUSB_COMPAT): $(LIBUSB)
# $(LINUX_PAM): $(FLEX)
# $(POSTGRES): $(ZLIB)
# $(CYRUS): $(OPENSSL) $(KRB5)
# $(KRB5): $(OPENSSL) $(KEYUTILS)
# $(GD): $(LIBPNG)
# $(LIBPNG): $(ZLIB)
# $(LIBXML2): $(LIBICONV) $(ZLIB)
# $(LIBXSLT): $(LIBXML2) $(LIBGCRYPT)
# $(POPT): $(LIBICONV)

# #NAS_LIBRARY
# $(QPAM_QAUTH): $(LINUX_PAM) $(QCONFIG) $(QNAS) $(QLIBNASLOG)
# $(QCLOUD3P_NASLIB): $(QADDSHARE) $(QREPLICATION_LIBRARY) $(ZLIB) $(QREPLICATION_LIBQSYNC) $(CURL)
# $(KRB5) $(LIBICONV) $(QLIBBT) $(QLDAP) $(LIBIDN) $(KEYUTILS)
# $(QLIBQBOX): $(SQLITE) $(QCONFIG) $(QUTIL) $(QLIBNASPRIV) $(QLIBNASLOG)
# $(QLIBNASLOG): $(SQLITE)
# $(QLIBNASPRIV): $(SQLITE)
# $(QCGI): $(SQLITE)
# $(QPDC): $(SQLITE)
# $(QLIBPOWER_CLEAN): $(QCONFIG) $(QUTIL)
# $(QADDC): $(OPENLDAP) $(LIBICONV) $(QCONFIG) $(QLIBNASLOG)
# $(QLIBQDNS): $(OPENLDAP) $(LIBICONV) $(QCONFIG) $(QLIBNASLOG)
# $(QCONFIG): $(OPENSSL) $(QCGI) $(QSTORAGE_MAN_V2) $(QPDC) $(QINI_CONFIG) $(QQUOTA) $(QUTIL) $(QNAS)
# $(SQLITE)
# $(QNAS): $(OPENSSL) $(SQLITE)
# $(QLIBVERSIONING): $(SQLITE)
# $(QLIBBT): $(SQLITE)
# $(QNVRLOG): $(SQLITE)
# $(QHAL): $(QINI_CONFIG)
# $(QSTORAGE_MAN_V2): $(QHAL)
# $(QHA): $(QSTORAGE_MAN_V2) $(QHAL) $(QLIBNASLOG) $(QCONFIG)
# $(QLIBLICENSE2): $(OPENSSL) $(LIBXML2)
# $(QLDAP): $(OPENLDAP)
# $(QIMR): $(GD) $(GIFLIB) $(JPEG) $(QNAS) $(QLIBMS)
# $(QLIBGMAILBACKUP): $(QCONFIG) $(QINI_CONFIG) $(QLIBNASLOG)
# $(QREPLICATION_LIBRARY): $(ZLIB) $(OPENSSL)
# $(QREPLICATION_LIBQSYNC): $(OPENSSL) $(SQLITE)
# $(QREPLICATION_LIBLUNPORT): $(OPENSSL)

# #SYS_UTIL
# $(PROFTPD): $(QADDSHARE) $(LIBICONV) $(QSTATISTICS) $(OPENSSL) $(QLIBNASPRIV)
# $(SAMBA): $(QADDSHARE) $(ACL) $(ATTR) $(LIBICONV) $(KRB5) $(CUPS) $(PYTHON) $(OPENLDAP)
# $(NETATALK): $(QADDSHARE) $(LIBICONV) $(KRB5) $(QSTATISTICS) $(QLIBNASPRIV) $(AVAHI) $(BERKELEY_DB)
# $(NFS_UTILS): $(QADDSHARE) $(LIBTIRPC) $(LIBGSSGLUE) $(LIBRPCSECGSS) $(LIBNFSIDMAP) $(QSTATISTICS)
# $(LIBEVENT) $(LVM2)
# $(RPCBIND): $(LIBTIRPC)
# $(BBCP): $(ZLIB)
# $(CURL): $(OPENSSL) $(OPENLDAP) $(KRB5) $(ZLIB)
# $(MLOCATE): $(QADDSHARE) $(JSON) $(QCONFIG)
# $(USBUTILS): $(LIBUSB_COMPAT)
# $(MT_DAAPD): $(LIBID3TAG) $(SQLITE)
# $(APCUPSD): $(LIBSTDCXX)
# $(MARIADB): $(LIBSTDCXX) $(NCURSES)
# $(DHCP): $(LIBNL)
# $(OPENSSH): $(ZLIB) $(OPENSSL)
# $(VIM): $(NCURSES)
# $(THIN_PROVISION_TOOL): $(EXPAT) $(BOOST)
# $(RICHACL_TOOL): $(ATTR) $(LIBTOOL)
# $(CRYPTSETUP): $(LIBUUID) $(LVM2) $(POPT) $(LIBGCRYPT) $(LIBICONV)
# $(PARTED_3_1): $(LIBUUID) $(LVM2)
# $(PARTED_2_2): $(LIBUUID)
# $(LINUXIGD): $(LIBUPNP)
# # $(ENCFS): $(BOOST) $(FUSE) $(RLOG) $(OPENSSL)
# $(ECRYPTFS_UTILS): $(LIBGCRYPT) $(KEYUTILS)
# $(DJMOUNT): $(FUSE) $(LIBICONV) $(LIBUPNP)
# $(RSYSLOG): $(GNUTLS)
# $(CENTERIM): $(NCURSES) $(OPENSSL) $(GNUTLS) $(ZLIB) $(LIBGCRYPT) $(LIBGPG_ERROR) $(LZO)
# $(SCREEN): $(NCURSES)
# $(CLAMAV): $(OPENSSL) $(ZLIB) $(LIBICONV) $(BZIP2) $(LIBXML2)
# $(NSSLDAP): $(OPENLDAP)
# $(PPTPD): $(PPP)
# $(DBUS): $(EXPAT)
# $(AVAHI): $(DBUS) $(LIBDAEMON) $(GDBM) $(GLIB) $(INTLTOOL)
# $(FIO): $(LIBAIO)
# $(MULTIPATH_TOOL): $(LVM2) $(READLINE) $(NCURSES)
# $(DCRAW): $(JPEG)
# $(BLUEZ): $(DBUS) $(GLIB) $(JSON)
# $(ALSA_UTILS): $(ALSA_LIB)
# $(NEON): $(OPENSSL) $(EXPAT)
# $(DAVFS2): $(NEON)
# $(CURLFTPFS): $(FUSE) $(CURL) $(KRB5) $(OPENSSL) $(GLIB) $(LIBICONV)
# $(QRENCODE): $(LIBPNG)
# $(ELFUTILS): $(ZLIB) $(BZIP2)
# $(SYSTEMTAP): $(ELFUTILS) $(AVAHI)
# $(WPA_SUPPLICANT): $(OPENSSL)
# $(FREERADIUS): $(QADDSHARE) $(LIBTOOL) $(GDBM) $(OPENSSL) $(POSTGRES)
# $(STUNNEL): $(OPENSSL)
# $(LPR): $(LIBCOMMON)
# $(ZFS_FUSE): $(LIBAIO) $(FUSE)
# $(LIBIDN): $(LIBICONV)
# $(LIBTRASH): $(QADDSHARE)
# $(GENPOWER): $(QADDSHARE) $(QLDAP) $(LIBICONV)
# $(NOIP): $(QADDSHARE) $(QLDAP) $(LIBICONV)
# $(NET_SNMP): $(QADDSHARE) $(OPENSSL)
# $(OPENVPN): $(LZO) $(OPENSSL) $(LINUX_PAM)
# $(RESOURCE_AGENTS): $(GLIB)
# $(PROCPS): $(NCURSES)
# $(PROCPS_NG): $(NCURSES)
# $(LIBQB): $(GLIB)
# $(GLUE): $(LIBXML2) $(BZIP2) $(GLIB) $(LIBUUID) $(DBUS)
# $(UTIL_LINUX): $(NCURSES)
# $(PSMISC): $(NCURSES)
# $(LXML): $(LIBXML2) $(LIBXSLT) $(PYTHON)
# $(GREP): $(PCRE)

# #NAS_UTIL
# $(QNAS_CONSOLE_INSTALL): $(LIBXML2) $(LIBPNG) $(JPEG) $(LIBXML2) $(FREETYPE)
# $(QADDSHARE): $(QHAL) $(QCONFIG) $(QCGI) $(QSTORAGE_MAN_V2) $(QPDC) $(QLIBNASLOG) $(QQUOTA)
# $(SQLITE) $(QUTIL) $(QNAS) $(QHA)
# $(QLCDMOND): $(QADDSHARE)
# $(QDAEMON_MGR): $(QADDSHARE)
# $(QDAEMON_MGR_NVR): $(QADDSHARE) $(QNSS2COMLIB)
# $(QHAL_UTIL): $(QADDSHARE)
# $(QFSTRIM): $(QADDSHARE)
# $(QNTPDATED): $(QADDSHARE)
# $(QGEN_HOSTNAME): $(QADDSHARE)
# $(QGETCFG): $(QADDSHARE)
# $(QSETCFG): $(QADDSHARE)
# $(QGETBINDADDR): $(QADDSHARE) $(QREPLICATION_LIBRARY)
# $(QETH_UTIL): $(QADDSHARE)
# $(QNAS_LOG): $(QADDSHARE) $(QSTATISTICS)
# $(QHDSUSPEND): $(QADDSHARE)
# $(QFAN_TEST): $(QADDSHARE)
# $(QUPSUTIL): $(QADDSHARE)
# $(QCHANGEPASSWD): $(QADDSHARE)
# $(QSMBTOOLS): $(QADDSHARE) $(RULI)
# $(QBUTTON_TEST): $(QADDSHARE)
# $(QGPIO_TEST): $(QADDSHARE)
# $(QFIRM_SRV): $(QADDSHARE)
# $(QUPS_YEC): $(QADDSHARE)
# $(QRECYCLE): $(QADDSHARE)
# $(QCLI): $(QADDSHARE) $(LIBUUID) $(JSON) $(LIBXML2) $(LIBICONV)
# $(QCFG): $(QADDSHARE)
# $(QIMRD): $(QADDSHARE) $(GIFLIB) $(JPEG) $(ZLIB) $(QIMR) $(QLIBMS)
# $(QIMR_ALL): $(QADDSHARE) $(GIFLIB) $(JPEG) $(ZLIB) $(QIMR) $(QLIBMS)
# $(QSYSLOGD): $(QADDSHARE)
# $(QLOGENGINE): $(QADDSHARE) $(QLIBAN)
# $(QSHIELD): $(QADDSHARE) $(QLIBAN)
# $(QSMS_SENDER): $(QADDSHARE)
# $(QMKSDNOD): $(QADDSHARE)
# $(QUSER_CMD): $(QADDSHARE) $(JSON) $(QLIBNASPRIV) $(QLIBNASAUTH)
# $(QISO_CHECK): $(QADDSHARE)
# $(QDEGRADE_CHECK): $(QADDSHARE)
# $(QPOWER_CLEAN): $(QADDSHARE) $(QLIBPOWER_CLEAN)
# $(QVDD_CONTROL): $(QADDSHARE) 
# $(QRM): $(QADDSHARE) 
# $(QFBUTIL): $(QADDSHARE) 
# $(QE2FSPROG_EVENT): $(QADDSHARE)
# $(QRCVY_SHARE): $(QADDSHARE)
# $(QSDMD): $(QADDSHARE)
# $(QSTORAGE_TOOL): $(QADDSHARE) $(LIBUUID) $(JSON)
# $(QDMC): $(LIBUPNP)
# $(QISCSIUTIL_LIO): $(QADDSHARE)
# $(QDAVMIGRATE): $(QADDSHARE)
# $(QLOGAGENT): $(QADDSHARE)
# $(QMODAGENT): $(QADDSHARE)
# $(QODS_UTIL): $(QODS) $(QADDSHARE)
# $(QFLV_CONVERTD): $(QADDSHARE)
# $(QSYSLOG_MAILD): $(QADDSHARE)
# $(QSAS_UPDATER): $(QADDSHARE)
# $(QLICENSE2): $(QADDSHARE) $(QLIBLICENSE2) 
# $(QBTTOOLS): $(QADDSHARE) $(QLIBBT)
# $(QREPLICATION_LUNPORTER): $(QADDSHARE) $(QREPLICATION_LIBRARY) $(ZLIB) $(QREPLICATION_LIBLUNPORT)
# $(QREPLICATION_QHASYNC): $(QADDSHARE) $(QREPLICATION_LIBRARY) $(ZLIB) $(QREPLICATION_LIBQSYNC)
# $(QREPLICATION_QMONITOR): $(QADDSHARE) $(QREPLICATION_LIBRARY) $(ZLIB) $(QREPLICATION_LIBQSYNC)
# $(QREPLICATION_QSNAPD): $(QADDSHARE) $(QREPLICATION_LIBRARY) $(ZLIB) $(QREPLICATION_LIBQSYNC)
# $(QVERSIOND): $(QADDSHARE) $(QREPLICATION_LIBRARY) $(ZLIB) $(QREPLICATION_LIBQSYNC) $(LIBRSYNC)
# $(QLIBVERSIONING) $(QLDAP) $(LIBICONV)
# $(QREPLICATION_QSYNC): $(QADDSHARE) $(QREPLICATION_LIBRARY) $(ZLIB) $(QREPLICATION_LIBQSYNC) $(CURL)
# $(KRB5) $(LIBICONV) $(QLIBBT) $(QLDAP) $(LIBIDN) $(KEYUTILS)
# $(QCLOUD3P_NASUTIL): $(QADDSHARE) $(QREPLICATION_LIBRARY) $(ZLIB) $(CURL) $(KRB5) $(LIBICONV)
# $(QLIBBT) $(QLDAP) $(LIBIDN) $(KEYUTILS) $(QCLOUD3P_NASLIB)
# $(QDDNS_UPDATE): $(QADDSHARE)
# $(QUPNPCD): $(QADDSHARE)
# $(QNASUTIL): $(QADDSHARE) $(LIBUUID) $(QLIBQBOX) $(QLIBNASACL) $(QLIBNASAUTH) $(QLIBNASPRIV)
# $(QSTATISTICS)
# $(QSTORAGE_UTIL): $(QADDSHARE)
# $(QLOGTOOLS): $(QADDSHARE) $(QLIBQBOX) $(QNVRLOG)
# $(QBOXD): $(QADDSHARE) $(QLIBQBOX) $(QLIBVERSIONING) $(QREPLICATION_LIBRARY)
# $(QREPLICATION_LIBQSYNC) $(ZLIB)
# $(QBOX_LOGD): $(QADDSHARE) $(QLIBQBOX) $(QLIBVERSIONING) $(QREPLICATION_LIBRARY) $(ZLIB)
# $(QBOX_MARIADB): $(QADDSHARE) $(QLIBQBOX) $(QLIBVERSIONING) $(QREPLICATION_LIBRARY) $(ZLIB)
