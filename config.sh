#!/bin/bash

set -e

# =======FAIL==========
# cd /root/NasX86_config/SysLib/gd-1.8.4/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/dhcpv6-1.1.0/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/openvpn-2.3.6/ && echo david=${PWD} && ./configure --enable-password-save


# ======PASS==========

# cd /root/NasX86_config/SysLib/ffmpeg/ && echo david=${PWD} && ./configure --arch=x86_64 --enable-cross-compile --target-os=linux --disable-yasm --enable-gpl --disable-encoder=snow --disable-decoder=snow
# cd /root/NasX86_config/SysLib/openssl-1.0.1p/ && echo david=${PWD} && ./Configure shared -DOPENSSL_NO_HEARTBEATS linux-x86_64
# cd /root/NasX86_config/SysLib/xmlrpc/ && echo david=${PWD} && ac_cv_header_expat_h=yes ac_cv_lib_expat_XML_ParserCreate=yes ./configure
# cd /root/NasX86_config/SysLib/cups-1.4.4/ && echo david=${PWD} && ./configure --disable-gssapi --disable-pam --disable-ssl --disable-acl --disable-libusb --disable-dbus --disable-avahi
# cd /root/NasX86_config/SysLib/gdbm-1.10/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/lcms2-2.6/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/libusb-0.1.12/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/libnfsidmap-0.23/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/jpeg-6b-src/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/ijs-0.35/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/fcgi-2.4.0/perl/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/fcgi-2.4.0/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/jrtplib-3.3.0/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/gutenprint-5.2.10/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/librsync-0.9.7/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/libiconv-1.12/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/eventlog-0.2.7/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/libevent-1.4.12-stable/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/expat-2.0.0/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/pam-0.99.7.1/Linux-PAM/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/giflib-4.1.3/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/libupnp-1.6.19/ && echo david=${PWD} && ./configure --without-documentation --disable-samples
# cd /root/NasX86_config/SysLib/fontconfig-2.11.1/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/libxml2-2.9.2/ && echo david=${PWD} && ./configure --without-python
# cd /root/NasX86_config/SysLib/libnfsidmap-0.25/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/jpeg-6b/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/gdbm-1.8.3/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/libid3tag-0.15.1b/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/cups-1.6.4/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/zlib-1.2.8/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/libgpg-error-1.6/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/attr-2.4.47/ && echo david=${PWD} && ac_cv_path_XGETTEXT=yes ac_cv_path_MSGFMT=yes ac_cv_path_MSGMERGE=yes ac_cv_path_MAKE=yes ./configure
# cd /root/NasX86_config/SysLib/e2fsprogs-1.42.5/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/libtirpc-0.3.0/ && echo david=${PWD} && ./configure --disable-gssapi
# cd /root/NasX86_config/SysLib/rlog-1.4/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/libtool-1.5.24/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/popt-1.14/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/fuse-2.9.2/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/libgcrypt-1.4.3/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/gnutls-2.6.2/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/librpcsecgss-0.19/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/gnupg-1.4.19/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/db-4.8.30/build_unix/ && echo david=${PWD} && ../dist/configure
# cd /root/NasX86_config/SysLib/openldap-2.4.7/ && echo david=${PWD} && ol_cv_bdb_compat=yes ol_cv_bdb_major=4 ./configure
# cd /root/NasX86_config/SysLib/cyrus-sasl-2.1.22/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/libusb-compat-0.1.4/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/freetype-2.3.7/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/ntfs-3g-1.2412/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/Linux-PAM-1.2.1/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/gd-2.0.34/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/libnl-1.1.4/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/libxml2-2.6.30/ && echo david=${PWD} && ./configure --without-python
# cd /root/NasX86_config/SysLib/liboop-1.0/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/libcsv-3.0.2/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/nettle-2.7.1/ && echo david=${PWD} && ./configure --disable-documentation --enable-static
# cd /root/NasX86_config/SysLib/ncurses-5.5/ && echo david=${PWD} && ./configure --with-shared
# cd /root/NasX86_config/SysLib/pcre-8.36/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/libcommon-0.98.10.1/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/libusb-1.0.9/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/libidn-1.25/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/json-c-0.9/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/readline-5.2/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/libffi-3.2.1/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/libtasn1-1.6/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/krb5-1.13/src/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/sqlite-3.4.1/ && echo david=${PWD} && ./configure --disable-tcl --enable-threadsafe
# cd /root/NasX86_config/SysLib/libuuid-1.0.3/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/ImageMagick-6.6.1-5/ && echo david=${PWD} && ./configure --without-tiff --without-perl --without-x --without-zlib --without-freetype
# cd /root/NasX86_config/SysLib/flex-2.5.39/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/libpng-1.2.15/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/acl-2.2.49/ && echo david=${PWD} && ac_cv_lib_attr_getxattr=yes ac_cv_header_attr_error_context_h=yes ac_cv_header_attr_xattr_h=yes ac_cv_path_XGETTEXT=yes ac_cv_path_MSGMERGE=yes ac_cv_path_MSGFMT=yes ./configure
# cd /root/NasX86_config/SysLib/libgssglue-0.4/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/gdbm-1.11/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/nut-2.2.2/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/wget-1.11.4/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/nut-2.6.5/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/neon-0.30.0/ && echo david=${PWD} && ./configure --with-ssl=openssl
# cd /root/NasX86_config/SysUtil/screen-4.0.3/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/thin-provisioning-tools-v0.4.1/ && echo david=${PWD} && ./configure --disable-selinux --disable-readline
# cd /root/NasX86_config/SysUtil/nut-2.0.3/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/wget-1.10/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/radvd-1.2/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/coreutils-6.7/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/LVM2.2.02.105/ && echo david=${PWD} && ./configure --disable-readline
# cd /root/NasX86_config/SysUtil/curl-7.21.0/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/ftpcopy-0.4.8/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/mt-daapd-0.2.4/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/mt-daapd-svn-1696/ && echo david=${PWD} && ./configure --enable-sqlite3
# cd /root/NasX86_config/SysUtil/wget-1.16/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/sg3_utils-1.32/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/ppp-2.4.7/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/cryptsetup-1.0.6/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/netkit-ftp-0.17/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/vim72/ && echo david=${PWD} && ./configure vim_cv_toupper_broken=no vim_cv_terminfo=yes vim_cv_tty_group=no vim_cv_tty_mode=ptys vim_cv_getcwd_broken=no vim_cv_stat_ignores_slash=no ac_cv_sizeof_int=4 vim_cv_memmove_handles_overlap=yes --with-tlib=ncurses --disable-selinux --disable-darwin --disable-xsmp --disable-xsmp-interact --disable-netbeans --disable-gtktest --disable-acl --disable-gpm --disable-sysmouse
# cd /root/NasX86_config/SysUtil/ecryptfs-utils-74/ && echo david=${PWD} && ./configure --disable-openssl --disable-pam --disable-tspi --disable-pywrap
# cd /root/NasX86_config/SysUtil/freeradius-server-2.2.0/ && echo david=${PWD} && ./configure --with-openssl --without-ascend-binary
# cd /root/NasX86_config/SysUtil/bluez-4.60/ && echo david=${PWD} && ./configure --enable-tools --disable-usb --enable-test
# cd /root/NasX86_config/SysUtil/tar-1.18/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/centerim-4.22.10/ && echo david=${PWD} && ./configure --disable-rpath --disable-icq --disable-yahoo --disable-aim --disable-irc --disable-jabber --disable-gg --disable-rss --disable-lj --disable-largefile --without-libjpeg --without-ncursesw --disable-msn --disable--rss
# cd /root/NasX86_config/SysUtil/mlocate-0.25/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/iproute2-2.6.39/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/djmount-0.71/ && echo david=${PWD} && ./configure --with-external-libupnp
# cd /root/NasX86_config/SysUtil/ntp-4.2.8/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/inotify-tools-3.14/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/dhcpcd-1.3.22-p14/ && echo david=${PWD} && ./configure --build=ia64-linux-gnu --host=ia64-linux-gnu
# cd /root/NasX86_config/SysUtil/libcgroup-0.41/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/rsync-3.0.7/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/stunnel-4.32/ && echo david=${PWD} && ./configure --enable-ipv6 --with-threads=fork --disable-libwrap
# cd /root/NasX86_config/SysUtil/mktemp-1.5/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/util-linux-2.12q/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/mt-daapd-0.2.4.2/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/openldap-2.4.23/ && echo david=${PWD} && ol_cv_bdb_compat=yes ol_cv_bdb_major=4 ./configure --with-yielding_select=yes
# cd /root/NasX86_config/SysUtil/usbutils-0.72/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/ez-ipupdate-3.0.10/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/curl-7.43.0/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/ppp-2.4.5/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/gnupg-1.4.13/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/net-snmp-5.5/ && echo david=${PWD} && ./configure --with-sys-location=/etc/config --with-logfile=/dev/null --with-persistent-directory=/var/ucd-snmp --with-mib-modules="qnapNAS mibII/entityMIB" --disable-manuals --enable-ucd-snmp-compatibility --enable-ipv6 --without-rpm --disable-embedded-perl --with-default-snmp-version="1" --with-defaults --disable-snmptrapd-subagent --with-endianness=little --with-out-mib-modules="ucd_snmp agentx disman/event disman/schedule" --with-perl-modules=no --with-enterprise-sysoid=1.3.6.1.4.1.24681 --with-nl=no
# cd /root/NasX86_config/SysUtil/cifs-utils-5.6/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/ethtool-4.0/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/sg3_utils-1.29/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/cryptsetup-1.5.1/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/rpcbind-0.2.0/ && echo david=${PWD} && ./configure --with-rpcuser=admin
# cd /root/NasX86_config/SysUtil/curlftpfs-0.9.2/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/xpdf-3.04/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/curl-7.42.1/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/apcupsd-3.14.10/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/ipmitool-1.8.15/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/irqbalance-1.0.6/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/avahi-0.6.30/ && echo david=${PWD} && ./configure --with-avahi-user=guest --with-avahi-group=guest --with-avahi-priv-access-group=guest --disable-qt3 --disable-qt4 --disable-gtk --disable-gtk3 --disable-python --disable-mono --disable-doxygen-doc --disable-doxygen-dot --disable-doxygen-xml --disable-doxygen-html --with-distro=none --disable-stack-protector --disable-manpages --disable-xmltoman
# cd /root/NasX86_config/SysUtil/nss_ldap-265/ && echo david=${PWD} && ac_cv_lib_ldap_main=yes ac_cv_header_ldap_h=yes ./configure --with-ldap-lib=openldap
# cd /root/NasX86_config/SysUtil/timespan-2.1/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/bash-3.2/ && echo david=${PWD} && ./configure --disable-nls
# cd /root/NasX86_config/SysUtil/dirsync-1_11/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/davfs2-1.5.0/ && echo david=${PWD} && ./configure dav_user=admin dav_group=administrators
# cd /root/NasX86_config/SysUtil/ffmpeg-0.5/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/rsyslog-4.4.2/ && echo david=${PWD} && ./configure --enable-mail --enable-gnutls
# cd /root/NasX86_config/SysUtil/openssh-7.0p1/ && echo david=${PWD} && ./configure --without-openssl-header-check --disable-strip
# cd /root/NasX86_config/SysUtil/gmediaserver-0.11.0/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/gnupg-1.4.7/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/apcupsd-3.10.15/ && echo david=${PWD} && ./configure --enable-usb
# cd /root/NasX86_config/SysUtil/shadow-4.1.4/ && echo david=${PWD} && ./configure --without-libpam --disable-shadowgrp --without-sha-crypt --without-nscd --without-selinux
# cd /root/NasX86_config/SysUtil/udev-140/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/wide-dhcpv6-20080615.patched/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/wide-dhcpv6-20080615/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/bash-3.2.48/ && echo david=${PWD} && ./configure --disable-nls
# cd /root/NasX86_config/SysUtil/ethtool-6/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/libqb-0.16.0/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/util-linux-2.19/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/alsa-utils-1.0.27.2/ && echo david=${PWD} && ./configure --disable-xmlto --disable-alsatest --disable-alsamixer --disable-alsaconf --disable-alsaloop
# cd /root/NasX86_config/SysUtil/grep-2.5.1/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/systemtap-2.6/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/psmisc-22.20/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/dbus-1.4.16/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/parted-3.1/ && echo david=${PWD} && ./configure --without-readline
# cd /root/NasX86_config/SysUtil/proftpd-1.3.5/ && echo david=${PWD} && ./configure --sysconfdir=/etc/config --localstatedir=/var
# cd /root/NasX86_config/SysUtil/alsa-lib-1.0.27.2/ && echo david=${PWD} && ./configure --disable-python
# cd /root/NasX86_config/SysUtil/nfs-utils-1.2.5/ && echo david=${PWD} && ./configure --enable-nfsv4=yes --enable-gss=no --enable-ipv6=yes --with-tcp-wrappers=no --disable-uuid --enable-tirpc=yes
# cd /root/NasX86_config/SysUtil/pptpd-1.4.0/ && echo david=${PWD} && ./configure --disable-bcrelay --without-libwrap
# cd /root/NasX86_config/SysUtil/iptables-1.4.21/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/tar-1.22/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/netatalk-3.0.5/ && echo david=${PWD} && ./configure --with-kerberos --without-shadow --disable-cups --enable-krbV-uam --with-cnid-cdb-backend --with-cnid-default-backend=cdb --with-ldap=no --enable-ddp --with-acls=yes --enable-debug
# cd /root/NasX86_config/SysUtil/Python-2.7.5/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/procps-ng-3.3.11/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/drbd-utils-8.9.0/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/intltool-0.41.1/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/lzo-2.05/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/samba-4.0.5/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/libdaemon-0.14/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/clamav-0.98.6/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/elfutils-0.148/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysUtil/aumix-2.9.1/ && echo david=${PWD} && ./configure --without-gtk --without-gpm --without-sysmouse --without-ncurses --disable-gtktest
# cd /root/NasX86_config/SysUtil/qrencode-3.4.4/ && echo david=${PWD} && ./configure
# cd /root/NasX86_config/SysLib/glib-2.24.2/ && echo david=${PWD} && glib_cv_stack_grows=no ac_cv_type_long_long=yes glib_cv_uscore=no ac_cv_func_posix_getpwuid_r=yes ac_cv_func_posix_getgrgid_r=yes ./configure
# cd /root/NasX86_config/SysLib/libxslt-1.1.22/ && echo david=${PWD} && ./configure --without-python --with-debug=off --with-debugger=off
# cd /root/NasX86_config/SysUtil/encfs-1.7.4/ && echo david=${PWD} && ./configure --with-boost-libdir=/usr/lib/x86_64-linux-gnu
