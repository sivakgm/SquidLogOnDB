# Makefile.in generated by automake 1.14.1 from Makefile.am.
# Makefile.  Generated from Makefile.in by configure.

# Copyright (C) 1994-2013 Free Software Foundation, Inc.

# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.



#

am__is_gnu_make = test -n '$(MAKEFILE_LIST)' && test -n '$(MAKELEVEL)'
am__make_running_with_option = \
  case $${target_option-} in \
      ?) ;; \
      *) echo "am__make_running_with_option: internal error: invalid" \
              "target option '$${target_option-}' specified" >&2; \
         exit 1;; \
  esac; \
  has_opt=no; \
  sane_makeflags=$$MAKEFLAGS; \
  if $(am__is_gnu_make); then \
    sane_makeflags=$$MFLAGS; \
  else \
    case $$MAKEFLAGS in \
      *\\[\ \	]*) \
        bs=\\; \
        sane_makeflags=`printf '%s\n' "$$MAKEFLAGS" \
          | sed "s/$$bs$$bs[$$bs $$bs	]*//g"`;; \
    esac; \
  fi; \
  skip_next=no; \
  strip_trailopt () \
  { \
    flg=`printf '%s\n' "$$flg" | sed "s/$$1.*$$//"`; \
  }; \
  for flg in $$sane_makeflags; do \
    test $$skip_next = yes && { skip_next=no; continue; }; \
    case $$flg in \
      *=*|--*) continue;; \
        -*I) strip_trailopt 'I'; skip_next=yes;; \
      -*I?*) strip_trailopt 'I';; \
        -*O) strip_trailopt 'O'; skip_next=yes;; \
      -*O?*) strip_trailopt 'O';; \
        -*l) strip_trailopt 'l'; skip_next=yes;; \
      -*l?*) strip_trailopt 'l';; \
      -[dEDm]) skip_next=yes;; \
      -[JT]) skip_next=yes;; \
    esac; \
    case $$flg in \
      *$$target_option*) has_opt=yes; break;; \
    esac; \
  done; \
  test $$has_opt = yes
am__make_dryrun = (target_option=n; $(am__make_running_with_option))
am__make_keepgoing = (target_option=k; $(am__make_running_with_option))
pkgdatadir = $(datadir)/squid
pkgincludedir = $(includedir)/squid
pkglibdir = $(libdir)/squid
pkglibexecdir = $(libexecdir)/squid
am__cd = CDPATH="$${ZSH_VERSION+.}$(PATH_SEPARATOR)" && cd
install_sh_DATA = $(install_sh) -c -m 644
install_sh_PROGRAM = $(install_sh) -c
install_sh_SCRIPT = $(install_sh) -c
INSTALL_HEADER = $(INSTALL_DATA)
transform = $(program_transform_name)
NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
build_triplet = x86_64-unknown-linux-gnu
host_triplet = x86_64-unknown-linux-gnu
am__append_1 = libltdl
subdir = .
DIST_COMMON = $(srcdir)/Makefile.in $(srcdir)/Makefile.am \
	$(top_srcdir)/configure $(am__configure_deps) \
	$(top_srcdir)/include/autoconf.h.in COPYING ChangeLog INSTALL \
	README cfgaux/compile cfgaux/config.guess cfgaux/config.sub \
	cfgaux/install-sh cfgaux/missing cfgaux/ltmain.sh \
	$(top_srcdir)/cfgaux/compile $(top_srcdir)/cfgaux/config.guess \
	$(top_srcdir)/cfgaux/config.sub \
	$(top_srcdir)/cfgaux/install-sh $(top_srcdir)/cfgaux/ltmain.sh \
	$(top_srcdir)/cfgaux/missing
ACLOCAL_M4 = $(top_srcdir)/aclocal.m4
am__aclocal_m4_deps = $(top_srcdir)/acinclude/init.m4 \
	$(top_srcdir)/acinclude/squid-util.m4 \
	$(top_srcdir)/acinclude/compiler-flags.m4 \
	$(top_srcdir)/acinclude/os-deps.m4 \
	$(top_srcdir)/acinclude/krb5.m4 $(top_srcdir)/acinclude/pam.m4 \
	$(top_srcdir)/acinclude/pkg.m4 \
	$(top_srcdir)/acinclude/lib-checks.m4 \
	$(top_srcdir)/acinclude/ax_cxx_compile_stdcxx_11.m4 \
	$(top_srcdir)/acinclude/ax_cxx_0x_types.m4 \
	$(top_srcdir)/helpers/basic_auth/modules.m4 \
	$(top_srcdir)/helpers/basic_auth/DB/required.m4 \
	$(top_srcdir)/helpers/basic_auth/LDAP/required.m4 \
	$(top_srcdir)/helpers/basic_auth/MSNT-multi-domain/required.m4 \
	$(top_srcdir)/helpers/basic_auth/MSNT/required.m4 \
	$(top_srcdir)/helpers/basic_auth/NCSA/required.m4 \
	$(top_srcdir)/helpers/basic_auth/NIS/required.m4 \
	$(top_srcdir)/helpers/basic_auth/PAM/required.m4 \
	$(top_srcdir)/helpers/basic_auth/POP3/required.m4 \
	$(top_srcdir)/helpers/basic_auth/RADIUS/required.m4 \
	$(top_srcdir)/helpers/basic_auth/SASL/required.m4 \
	$(top_srcdir)/helpers/basic_auth/SMB/required.m4 \
	$(top_srcdir)/helpers/basic_auth/SSPI/required.m4 \
	$(top_srcdir)/helpers/basic_auth/fake/required.m4 \
	$(top_srcdir)/helpers/basic_auth/getpwnam/required.m4 \
	$(top_srcdir)/helpers/ntlm_auth/modules.m4 \
	$(top_srcdir)/helpers/ntlm_auth/fake/required.m4 \
	$(top_srcdir)/helpers/ntlm_auth/SSPI/required.m4 \
	$(top_srcdir)/helpers/ntlm_auth/smb_lm/required.m4 \
	$(top_srcdir)/helpers/negotiate_auth/modules.m4 \
	$(top_srcdir)/helpers/negotiate_auth/SSPI/required.m4 \
	$(top_srcdir)/helpers/negotiate_auth/kerberos/required.m4 \
	$(top_srcdir)/helpers/negotiate_auth/wrapper/required.m4 \
	$(top_srcdir)/helpers/digest_auth/modules.m4 \
	$(top_srcdir)/helpers/digest_auth/LDAP/required.m4 \
	$(top_srcdir)/helpers/digest_auth/eDirectory/required.m4 \
	$(top_srcdir)/helpers/digest_auth/file/required.m4 \
	$(top_srcdir)/helpers/log_daemon/modules.m4 \
	$(top_srcdir)/helpers/log_daemon/DB/required.m4 \
	$(top_srcdir)/helpers/log_daemon/file/required.m4 \
	$(top_srcdir)/helpers/external_acl/modules.m4 \
	$(top_srcdir)/helpers/external_acl/AD_group/required.m4 \
	$(top_srcdir)/helpers/external_acl/LDAP_group/required.m4 \
	$(top_srcdir)/helpers/external_acl/LM_group/required.m4 \
	$(top_srcdir)/helpers/external_acl/SQL_session/required.m4 \
	$(top_srcdir)/helpers/external_acl/eDirectory_userip/required.m4 \
	$(top_srcdir)/helpers/external_acl/file_userip/required.m4 \
	$(top_srcdir)/helpers/external_acl/kerberos_ldap_group/required.m4 \
	$(top_srcdir)/helpers/external_acl/session/required.m4 \
	$(top_srcdir)/helpers/external_acl/time_quota/required.m4 \
	$(top_srcdir)/helpers/external_acl/unix_group/required.m4 \
	$(top_srcdir)/helpers/external_acl/wbinfo_group/required.m4 \
	$(top_srcdir)/helpers/url_rewrite/modules.m4 \
	$(top_srcdir)/helpers/url_rewrite/fake/required.m4 \
	$(top_srcdir)/helpers/storeid_rewrite/modules.m4 \
	$(top_srcdir)/helpers/storeid_rewrite/file/required.m4 \
	$(top_srcdir)/configure.ac
am__configure_deps = $(am__aclocal_m4_deps) $(CONFIGURE_DEPENDENCIES) \
	$(ACLOCAL_M4)
am__CONFIG_DISTCLEAN_FILES = config.status config.cache config.log \
 configure.lineno config.status.lineno
mkinstalldirs = $(install_sh) -d
CONFIG_HEADER = $(top_builddir)/include/autoconf.h
CONFIG_CLEAN_FILES =
CONFIG_CLEAN_VPATH_FILES =
AM_V_P = $(am__v_P_$(V))
am__v_P_ = $(am__v_P_$(AM_DEFAULT_VERBOSITY))
am__v_P_0 = false
am__v_P_1 = :
AM_V_GEN = $(am__v_GEN_$(V))
am__v_GEN_ = $(am__v_GEN_$(AM_DEFAULT_VERBOSITY))
am__v_GEN_0 = @echo "  GEN     " $@;
am__v_GEN_1 = 
AM_V_at = $(am__v_at_$(V))
am__v_at_ = $(am__v_at_$(AM_DEFAULT_VERBOSITY))
am__v_at_0 = @
am__v_at_1 = 
SOURCES =
DIST_SOURCES =
RECURSIVE_TARGETS = all-recursive check-recursive cscopelist-recursive \
	ctags-recursive dvi-recursive html-recursive info-recursive \
	install-data-recursive install-dvi-recursive \
	install-exec-recursive install-html-recursive \
	install-info-recursive install-pdf-recursive \
	install-ps-recursive install-recursive installcheck-recursive \
	installdirs-recursive pdf-recursive ps-recursive \
	tags-recursive uninstall-recursive
am__can_run_installinfo = \
  case $$AM_UPDATE_INFO_DIR in \
    n|no|NO) false;; \
    *) (install-info --version) >/dev/null 2>&1;; \
  esac
RECURSIVE_CLEAN_TARGETS = mostlyclean-recursive clean-recursive	\
  distclean-recursive maintainer-clean-recursive
am__recursive_targets = \
  $(RECURSIVE_TARGETS) \
  $(RECURSIVE_CLEAN_TARGETS) \
  $(am__extra_recursive_targets)
AM_RECURSIVE_TARGETS = $(am__recursive_targets:-recursive=) TAGS CTAGS \
	cscope distdir dist dist-all distcheck
am__tagged_files = $(HEADERS) $(SOURCES) $(TAGS_FILES) $(LISP)
# Read a list of newline-separated strings from the standard input,
# and print each of them once, without duplicates.  Input order is
# *not* preserved.
am__uniquify_input = $(AWK) '\
  BEGIN { nonempty = 0; } \
  { items[$$0] = 1; nonempty = 1; } \
  END { if (nonempty) { for (i in items) print i; }; } \
'
# Make sure the list of sources is unique.  This is necessary because,
# e.g., the same source file might be shared among _SOURCES variables
# for different programs/libraries.
am__define_uniq_tagged_files = \
  list='$(am__tagged_files)'; \
  unique=`for i in $$list; do \
    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
  done | $(am__uniquify_input)`
ETAGS = etags
CTAGS = ctags
CSCOPE = cscope
DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST)
distdir = $(PACKAGE)-$(VERSION)
top_distdir = $(distdir)
am__remove_distdir = \
  if test -d "$(distdir)"; then \
    find "$(distdir)" -type d ! -perm -200 -exec chmod u+w {} ';' \
      && rm -rf "$(distdir)" \
      || { sleep 5 && rm -rf "$(distdir)"; }; \
  else :; fi
am__post_remove_distdir = $(am__remove_distdir)
am__relativize = \
  dir0=`pwd`; \
  sed_first='s,^\([^/]*\)/.*$$,\1,'; \
  sed_rest='s,^[^/]*/*,,'; \
  sed_last='s,^.*/\([^/]*\)$$,\1,'; \
  sed_butlast='s,/*[^/]*$$,,'; \
  while test -n "$$dir1"; do \
    first=`echo "$$dir1" | sed -e "$$sed_first"`; \
    if test "$$first" != "."; then \
      if test "$$first" = ".."; then \
        dir2=`echo "$$dir0" | sed -e "$$sed_last"`/"$$dir2"; \
        dir0=`echo "$$dir0" | sed -e "$$sed_butlast"`; \
      else \
        first2=`echo "$$dir2" | sed -e "$$sed_first"`; \
        if test "$$first2" = "$$first"; then \
          dir2=`echo "$$dir2" | sed -e "$$sed_rest"`; \
        else \
          dir2="../$$dir2"; \
        fi; \
        dir0="$$dir0"/"$$first"; \
      fi; \
    fi; \
    dir1=`echo "$$dir1" | sed -e "$$sed_rest"`; \
  done; \
  reldir="$$dir2"
DIST_ARCHIVES = $(distdir).tar.gz $(distdir).tar.bz2
GZIP_ENV = --best
DIST_TARGETS = dist-bzip2 dist-gzip
distuninstallcheck_listfiles = find . -type f -print
am__distuninstallcheck_listfiles = $(distuninstallcheck_listfiles) \
  | sed 's|^\./|$(prefix)/|' | grep -v '$(infodir)/dir$$'
distcleancheck_listfiles = find . -type f -print
ACLOCAL = ${SHELL} /home/sivaprakash/Documents/squid-3.4.6/cfgaux/missing aclocal-1.14
ADAPTATION_LIBS = 
ALLOCA = 
AMTAR = $${TAR-tar}
AM_DEFAULT_VERBOSITY = 1
AR = /usr/bin/ar
ARGZ_H = 
AR_R = /usr/bin/ar r
AUTH_LIBS_TO_BUILD =  basic/libbasic.la ntlm/libntlm.la negotiate/libnegotiate.la digest/libdigest.la
AUTH_MODULES =  basic ntlm negotiate digest
AUTOCONF = ${SHELL} /home/sivaprakash/Documents/squid-3.4.6/cfgaux/missing autoconf
AUTOHEADER = ${SHELL} /home/sivaprakash/Documents/squid-3.4.6/cfgaux/missing autoheader
AUTOMAKE = ${SHELL} /home/sivaprakash/Documents/squid-3.4.6/cfgaux/missing automake-1.14
AWK = gawk
BASIC_AUTH_HELPERS =  DB LDAP MSNT MSNT-multi-domain NCSA NIS POP3 RADIUS SASL SMB fake getpwnam
BZR = 
CACHE_EFFECTIVE_USER = nobody
CC = gcc
CCDEPMODE = depmode=gcc3
CFLAGS = -Wall 
CGIEXT = .cgi
CHMOD = /bin/chmod
CPP = gcc -E
CPPFLAGS =   
CPPUNITCONFIG = false
CRYPTLIB = -lcrypt
CXX = g++
CXXCPP = g++ -E
CXXDEPMODE = depmode=gcc3
CXXFLAGS = -g -O2 -march=native
CYGPATH_W = echo
DEFAULT_HOSTS = /etc/hosts
DEFAULT_LOG_DIR = ${prefix}/var/logs
DEFAULT_PID_FILE = ${prefix}/var/run/squid.pid
DEFAULT_SWAP_DIR = ${prefix}/var/cache/squid
DEFS = -DHAVE_CONFIG_H
DEPDIR = .deps
DIGEST_AUTH_HELPERS =  LDAP file
DISK_LIBS =  libAIO.a libBlocking.a libDiskDaemon.a libDiskThreads.a libIpcIo.a libMmapped.a
DISK_LINKOBJS =  DiskIO/AIO/AIODiskIOModule.o DiskIO/Blocking/BlockingDiskIOModule.o DiskIO/DiskDaemon/DiskDaemonDiskIOModule.o DiskIO/DiskThreads/DiskThreadsDiskIOModule.o DiskIO/IpcIo/IpcIoDiskIOModule.o DiskIO/Mmapped/MmappedDiskIOModule.o
DISK_MODULES =  AIO Blocking DiskDaemon DiskThreads IpcIo Mmapped
DISK_OS_LIBS =  -lrt -lpthread
DISK_PROGRAMS =  DiskIO/DiskDaemon/diskd
DLLTOOL = false
DSYMUTIL = 
DUMPBIN = 
ECAP_LIBS = 
ECHO_C = 
ECHO_N = -n
ECHO_T = 
EGREP = /bin/egrep
EPOLL_LIBS = 
EUILIB = 
EXEEXT = 
EXPATLIB = 
EXTERNAL_ACL_HELPERS =  LDAP_group SQL_session eDirectory_userip file_userip kerberos_ldap_group session time_quota unix_group wbinfo_group
EXT_LIBECAP_CFLAGS = 
EXT_LIBECAP_LIBS = 
FALSE = /bin/false
FGREP = /bin/fgrep
GREP = grep
HAVE_CXX11 = 0
HOSTCXX = g++ -march=native
ICAP_LIBS = 
INCLTDL = -I${top_srcdir}/libltdl
INSTALL = /usr/bin/install -c
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_PROGRAM = ${INSTALL}
INSTALL_SCRIPT = ${INSTALL}
INSTALL_STRIP_PROGRAM = $(install_sh) -c -s
KRB5INCS =  
KRB5LIBS = -lgssapi_krb5 -lkrb5 -lk5crypto -lcom_err -lkrb5 -lk5crypto -lcom_err
LBERLIB = -llber
LD = /usr/bin/ld -m elf_x86_64
LDAPLIB = -lldap
LDFLAGS = -g
LIBADD_DL = -ldl
LIBADD_DLD_LINK = 
LIBADD_DLOPEN = -ldl
LIBADD_SHL_LOAD = 
LIBLTDL = ${top_build_prefix}libltdl/libltdlc.la
LIBOBJS = 
LIBS = 
LIBSASL = -lsasl2
LIBTOOL = $(SHELL) $(top_builddir)/libtool
LIB_DB = -ldb
LIPO = 
LN = /bin/ln
LN_S = ln -s
LOG_DAEMON_HELPERS =  DB file
LTDLDEPS = ${top_build_prefix}libltdl/libltdlc.la
LTDLINCL = -I${top_srcdir}/libltdl
LTDLOPEN = libltdl
LTLIBOBJS = 
LT_CONFIG_H = include/autoconf.h
LT_DLLOADERS =  libltdl/dlopen.la
LT_DLPREOPEN = -dlpreopen libltdl/dlopen.la 
MAINT = #
MAKEINFO = ${SHELL} /home/sivaprakash/Documents/squid-3.4.6/cfgaux/missing makeinfo
MANIFEST_TOOL = :
MINGW_LIBS = 
MKDIR = /bin/mkdir
MKDIR_P = /bin/mkdir -p
MV = /bin/mv
NEGOTIATE_AUTH_HELPERS =  kerberos wrapper
NETTLELIB = 
NM = /usr/bin/nm -B
NMEDIT = 
NTLM_AUTH_HELPERS =  fake smb_lm
OBJDUMP = objdump
OBJEXT = o
OTOOL = 
OTOOL64 = 
PACKAGE = squid
PACKAGE_BUGREPORT = http://bugs.squid-cache.org/
PACKAGE_NAME = Squid Web Proxy
PACKAGE_STRING = Squid Web Proxy 3.4.6
PACKAGE_TARNAME = squid
PACKAGE_URL = 
PACKAGE_VERSION = 3.4.6
PATH_SEPARATOR = :
PERL = /usr/bin/perl
PKG_CONFIG = /usr/bin/pkg-config
PKG_CONFIG_LIBDIR = 
PKG_CONFIG_PATH = 
PO2HTML = off
PO2TEXT = off
POD2MAN = /usr/bin/pod2man
RANLIB = ranlib
REGEXLIB = 
REPL_LIBS = liblru.a
REPL_OBJS = repl/liblru.a
REPL_POLICIES = lru
RM = /bin/rm -f
SED = /bin/sed
SET_MAKE = 
SH = /bin/sh
SHELL = /bin/sh
SMBCLIENT = /usr/bin/smbclient
SNMPLIB = ../snmplib/libsnmplib.la
SQUID_CFLAGS = -Wall -Wpointer-arith -Wwrite-strings -Wmissing-prototypes -Wmissing-declarations -Wcomments -Wshadow -Werror -pipe -D_REENTRANT
SQUID_CPPUNIT_INC = 
SQUID_CPPUNIT_LA = 
SQUID_CPPUNIT_LIBS = 
SQUID_CXXFLAGS = -Wall -Wpointer-arith -Wwrite-strings -Wcomments -Wshadow -Werror -pipe -D_REENTRANT
SSLLIB = 
STOREID_REWRITE_HELPERS =  file
STORE_LIBS_TO_ADD =  fs/libaufs.la fs/libdiskd.la fs/librock.la fs/libufs.la
STORE_LIBS_TO_BUILD =  libaufs.la libdiskd.la librock.la libufs.la
STORE_TESTS = 
STRIP = strip
TR = /usr/bin/tr
TRUE = /bin/true
URL_REWRITE_HELPERS =  fake
VERSION = 3.4.6
WBINFO = /usr/bin/wbinfo
WIN32_PSAPI = 
XMLLIB = 
XTRA_LIBS = -lm -lnsl -lresolv -lrt -ldl -ldl
XTRA_OBJS = 
abs_builddir = /home/sivaprakash/Documents/squid-3.4.6
abs_srcdir = /home/sivaprakash/Documents/squid-3.4.6
abs_top_builddir = /home/sivaprakash/Documents/squid-3.4.6
abs_top_srcdir = /home/sivaprakash/Documents/squid-3.4.6
ac_ct_AR = 
ac_ct_CC = gcc
ac_ct_CXX = g++
ac_ct_DUMPBIN = 
ac_krb5_config = yes
am__include = include
am__leading_dot = .
am__quote = 
am__tar = tar --format=ustar -chf - "$$tardir"
am__untar = tar -xf -
bindir = ${exec_prefix}/bin
build = x86_64-unknown-linux-gnu
build_alias = 
build_cpu = x86_64
build_os = linux-gnu
build_vendor = unknown
builddir = .
datadir = ${datarootdir}
datarootdir = ${prefix}/share
docdir = ${datarootdir}/doc/${PACKAGE_TARNAME}
dvidir = ${docdir}
exec_prefix = ${prefix}
host = x86_64-unknown-linux-gnu
host_alias = 
host_cpu = x86_64
host_os = linux-gnu
host_vendor = unknown
htmldir = ${docdir}
includedir = ${prefix}/include
infodir = ${datarootdir}/info
install_sh = ${SHELL} /home/sivaprakash/Documents/squid-3.4.6/cfgaux/install-sh
libdir = ${exec_prefix}/lib
libexecdir = ${exec_prefix}/libexec
localedir = ${datarootdir}/locale
localstatedir = ${prefix}/var
ltdl_LIBOBJS =  lt__strl.o
ltdl_LTLIBOBJS =  lt__strl.lo
makesnmplib = snmplib
mandir = ${datarootdir}/man
mkdir_p = $(MKDIR_P)
oldincludedir = /usr/include
pdfdir = ${docdir}
prefix = /usr/squid/squid-3.4
program_transform_name = s,x,x,
psdir = ${docdir}
sbindir = ${exec_prefix}/sbin
sharedstatedir = ${prefix}/com
srcdir = .
subdirs =  libltdl
sys_symbol_underscore = no
sysconfdir = ${prefix}/etc
target_alias = 
top_build_prefix = 
top_builddir = .
top_srcdir = .
AUTOMAKE_OPTIONS = dist-bzip2 subdir-objects 1.5 foreign
DIST_SUBDIRS = compat lib libltdl snmplib scripts icons errors contrib doc helpers src test-suite tools
SUBDIRS = compat lib $(makesnmplib) $(am__append_1) scripts icons \
	errors doc helpers src tools test-suite
DISTCLEANFILES = include/stamp-h include/stamp-h[0-9]*
DEFAULT_PINGER = $(libexecdir)/`echo pinger | sed '$(transform);s/$$/$(EXEEXT)/'`
EXTRA_DIST = \
	ChangeLog \
	CONTRIBUTORS \
	COPYING \
	COPYRIGHT \
	CREDITS \
	INSTALL \
	QUICKSTART \
	README \
	SPONSORS \
	bootstrap.sh \
	po4a.conf

all: all-recursive

.SUFFIXES:
am--refresh: Makefile
	@:
$(srcdir)/Makefile.in: # $(srcdir)/Makefile.am  $(am__configure_deps)
	@for dep in $?; do \
	  case '$(am__configure_deps)' in \
	    *$$dep*) \
	      echo ' cd $(srcdir) && $(AUTOMAKE) --foreign'; \
	      $(am__cd) $(srcdir) && $(AUTOMAKE) --foreign \
		&& exit 0; \
	      exit 1;; \
	  esac; \
	done; \
	echo ' cd $(top_srcdir) && $(AUTOMAKE) --foreign Makefile'; \
	$(am__cd) $(top_srcdir) && \
	  $(AUTOMAKE) --foreign Makefile
.PRECIOUS: Makefile
Makefile: $(srcdir)/Makefile.in $(top_builddir)/config.status
	@case '$?' in \
	  *config.status*) \
	    echo ' $(SHELL) ./config.status'; \
	    $(SHELL) ./config.status;; \
	  *) \
	    echo ' cd $(top_builddir) && $(SHELL) ./config.status $@ $(am__depfiles_maybe)'; \
	    cd $(top_builddir) && $(SHELL) ./config.status $@ $(am__depfiles_maybe);; \
	esac;

$(top_builddir)/config.status: $(top_srcdir)/configure $(CONFIG_STATUS_DEPENDENCIES)
	$(SHELL) ./config.status --recheck

$(top_srcdir)/configure: # $(am__configure_deps)
	$(am__cd) $(srcdir) && $(AUTOCONF)
$(ACLOCAL_M4): # $(am__aclocal_m4_deps)
	$(am__cd) $(srcdir) && $(ACLOCAL) $(ACLOCAL_AMFLAGS)
$(am__aclocal_m4_deps):

include/autoconf.h: include/stamp-h1
	@test -f $@ || rm -f include/stamp-h1
	@test -f $@ || $(MAKE) $(AM_MAKEFLAGS) include/stamp-h1

include/stamp-h1: $(top_srcdir)/include/autoconf.h.in $(top_builddir)/config.status
	@rm -f include/stamp-h1
	cd $(top_builddir) && $(SHELL) ./config.status include/autoconf.h
$(top_srcdir)/include/autoconf.h.in: # $(am__configure_deps) 
	($(am__cd) $(top_srcdir) && $(AUTOHEADER))
	rm -f include/stamp-h1
	touch $@

distclean-hdr:
	-rm -f include/autoconf.h include/stamp-h1

mostlyclean-libtool:
	-rm -f *.lo

clean-libtool:
	-rm -rf .libs _libs

distclean-libtool:
	-rm -f libtool config.lt

# This directory's subdirectories are mostly independent; you can cd
# into them and run 'make' without going through this Makefile.
# To change the values of 'make' variables: instead of editing Makefiles,
# (1) if the variable is set in 'config.status', edit 'config.status'
#     (which will cause the Makefiles to be regenerated when you run 'make');
# (2) otherwise, pass the desired values on the 'make' command line.
$(am__recursive_targets):
	@fail=; \
	if $(am__make_keepgoing); then \
	  failcom='fail=yes'; \
	else \
	  failcom='exit 1'; \
	fi; \
	dot_seen=no; \
	target=`echo $@ | sed s/-recursive//`; \
	case "$@" in \
	  distclean-* | maintainer-clean-*) list='$(DIST_SUBDIRS)' ;; \
	  *) list='$(SUBDIRS)' ;; \
	esac; \
	for subdir in $$list; do \
	  echo "Making $$target in $$subdir"; \
	  if test "$$subdir" = "."; then \
	    dot_seen=yes; \
	    local_target="$$target-am"; \
	  else \
	    local_target="$$target"; \
	  fi; \
	  ($(am__cd) $$subdir && $(MAKE) $(AM_MAKEFLAGS) $$local_target) \
	  || eval $$failcom; \
	done; \
	if test "$$dot_seen" = "no"; then \
	  $(MAKE) $(AM_MAKEFLAGS) "$$target-am" || exit 1; \
	fi; test -z "$$fail"

ID: $(am__tagged_files)
	$(am__define_uniq_tagged_files); mkid -fID $$unique
tags: tags-recursive
TAGS: tags

tags-am: $(TAGS_DEPENDENCIES) $(am__tagged_files)
	set x; \
	here=`pwd`; \
	if ($(ETAGS) --etags-include --version) >/dev/null 2>&1; then \
	  include_option=--etags-include; \
	  empty_fix=.; \
	else \
	  include_option=--include; \
	  empty_fix=; \
	fi; \
	list='$(SUBDIRS)'; for subdir in $$list; do \
	  if test "$$subdir" = .; then :; else \
	    test ! -f $$subdir/TAGS || \
	      set "$$@" "$$include_option=$$here/$$subdir/TAGS"; \
	  fi; \
	done; \
	$(am__define_uniq_tagged_files); \
	shift; \
	if test -z "$(ETAGS_ARGS)$$*$$unique"; then :; else \
	  test -n "$$unique" || unique=$$empty_fix; \
	  if test $$# -gt 0; then \
	    $(ETAGS) $(ETAGSFLAGS) $(AM_ETAGSFLAGS) $(ETAGS_ARGS) \
	      "$$@" $$unique; \
	  else \
	    $(ETAGS) $(ETAGSFLAGS) $(AM_ETAGSFLAGS) $(ETAGS_ARGS) \
	      $$unique; \
	  fi; \
	fi
ctags: ctags-recursive

CTAGS: ctags
ctags-am: $(TAGS_DEPENDENCIES) $(am__tagged_files)
	$(am__define_uniq_tagged_files); \
	test -z "$(CTAGS_ARGS)$$unique" \
	  || $(CTAGS) $(CTAGSFLAGS) $(AM_CTAGSFLAGS) $(CTAGS_ARGS) \
	     $$unique

GTAGS:
	here=`$(am__cd) $(top_builddir) && pwd` \
	  && $(am__cd) $(top_srcdir) \
	  && gtags -i $(GTAGS_ARGS) "$$here"
cscope: cscope.files
	test ! -s cscope.files \
	  || $(CSCOPE) -b -q $(AM_CSCOPEFLAGS) $(CSCOPEFLAGS) -i cscope.files $(CSCOPE_ARGS)
clean-cscope:
	-rm -f cscope.files
cscope.files: clean-cscope cscopelist
cscopelist: cscopelist-recursive

cscopelist-am: $(am__tagged_files)
	list='$(am__tagged_files)'; \
	case "$(srcdir)" in \
	  [\\/]* | ?:[\\/]*) sdir="$(srcdir)" ;; \
	  *) sdir=$(subdir)/$(srcdir) ;; \
	esac; \
	for i in $$list; do \
	  if test -f "$$i"; then \
	    echo "$(subdir)/$$i"; \
	  else \
	    echo "$$sdir/$$i"; \
	  fi; \
	done >> $(top_builddir)/cscope.files

distclean-tags:
	-rm -f TAGS ID GTAGS GRTAGS GSYMS GPATH tags
	-rm -f cscope.out cscope.in.out cscope.po.out cscope.files

distdir: $(DISTFILES)
	$(am__remove_distdir)
	test -d "$(distdir)" || mkdir "$(distdir)"
	@srcdirstrip=`echo "$(srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	topsrcdirstrip=`echo "$(top_srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	list='$(DISTFILES)'; \
	  dist_files=`for file in $$list; do echo $$file; done | \
	  sed -e "s|^$$srcdirstrip/||;t" \
	      -e "s|^$$topsrcdirstrip/|$(top_builddir)/|;t"`; \
	case $$dist_files in \
	  */*) $(MKDIR_P) `echo "$$dist_files" | \
			   sed '/\//!d;s|^|$(distdir)/|;s,/[^/]*$$,,' | \
			   sort -u` ;; \
	esac; \
	for file in $$dist_files; do \
	  if test -f $$file || test -d $$file; then d=.; else d=$(srcdir); fi; \
	  if test -d $$d/$$file; then \
	    dir=`echo "/$$file" | sed -e 's,/[^/]*$$,,'`; \
	    if test -d "$(distdir)/$$file"; then \
	      find "$(distdir)/$$file" -type d ! -perm -700 -exec chmod u+rwx {} \;; \
	    fi; \
	    if test -d $(srcdir)/$$file && test $$d != $(srcdir); then \
	      cp -fpR $(srcdir)/$$file "$(distdir)$$dir" || exit 1; \
	      find "$(distdir)/$$file" -type d ! -perm -700 -exec chmod u+rwx {} \;; \
	    fi; \
	    cp -fpR $$d/$$file "$(distdir)$$dir" || exit 1; \
	  else \
	    test -f "$(distdir)/$$file" \
	    || cp -p $$d/$$file "$(distdir)/$$file" \
	    || exit 1; \
	  fi; \
	done
	@list='$(DIST_SUBDIRS)'; for subdir in $$list; do \
	  if test "$$subdir" = .; then :; else \
	    $(am__make_dryrun) \
	      || test -d "$(distdir)/$$subdir" \
	      || $(MKDIR_P) "$(distdir)/$$subdir" \
	      || exit 1; \
	    dir1=$$subdir; dir2="$(distdir)/$$subdir"; \
	    $(am__relativize); \
	    new_distdir=$$reldir; \
	    dir1=$$subdir; dir2="$(top_distdir)"; \
	    $(am__relativize); \
	    new_top_distdir=$$reldir; \
	    echo " (cd $$subdir && $(MAKE) $(AM_MAKEFLAGS) top_distdir="$$new_top_distdir" distdir="$$new_distdir" \\"; \
	    echo "     am__remove_distdir=: am__skip_length_check=: am__skip_mode_fix=: distdir)"; \
	    ($(am__cd) $$subdir && \
	      $(MAKE) $(AM_MAKEFLAGS) \
	        top_distdir="$$new_top_distdir" \
	        distdir="$$new_distdir" \
		am__remove_distdir=: \
		am__skip_length_check=: \
		am__skip_mode_fix=: \
	        distdir) \
	      || exit 1; \
	  fi; \
	done
	$(MAKE) $(AM_MAKEFLAGS) \
	  top_distdir="$(top_distdir)" distdir="$(distdir)" \
	  dist-hook
	-test -n "$(am__skip_mode_fix)" \
	|| find "$(distdir)" -type d ! -perm -755 \
		-exec chmod u+rwx,go+rx {} \; -o \
	  ! -type d ! -perm -444 -links 1 -exec chmod a+r {} \; -o \
	  ! -type d ! -perm -400 -exec chmod a+r {} \; -o \
	  ! -type d ! -perm -444 -exec $(install_sh) -c -m a+r {} {} \; \
	|| chmod -R a+r "$(distdir)"
dist-gzip: distdir
	tardir=$(distdir) && $(am__tar) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).tar.gz
	$(am__post_remove_distdir)
dist-bzip2: distdir
	tardir=$(distdir) && $(am__tar) | BZIP2=$${BZIP2--9} bzip2 -c >$(distdir).tar.bz2
	$(am__post_remove_distdir)

dist-lzip: distdir
	tardir=$(distdir) && $(am__tar) | lzip -c $${LZIP_OPT--9} >$(distdir).tar.lz
	$(am__post_remove_distdir)

dist-xz: distdir
	tardir=$(distdir) && $(am__tar) | XZ_OPT=$${XZ_OPT--e} xz -c >$(distdir).tar.xz
	$(am__post_remove_distdir)

dist-tarZ: distdir
	@echo WARNING: "Support for shar distribution archives is" \
	               "deprecated." >&2
	@echo WARNING: "It will be removed altogether in Automake 2.0" >&2
	tardir=$(distdir) && $(am__tar) | compress -c >$(distdir).tar.Z
	$(am__post_remove_distdir)

dist-shar: distdir
	@echo WARNING: "Support for distribution archives compressed with" \
		       "legacy program 'compress' is deprecated." >&2
	@echo WARNING: "It will be removed altogether in Automake 2.0" >&2
	shar $(distdir) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).shar.gz
	$(am__post_remove_distdir)

dist-zip: distdir
	-rm -f $(distdir).zip
	zip -rq $(distdir).zip $(distdir)
	$(am__post_remove_distdir)

dist dist-all:
	$(MAKE) $(AM_MAKEFLAGS) $(DIST_TARGETS) am__post_remove_distdir='@:'
	$(am__post_remove_distdir)

# This target untars the dist file and tries a VPATH configuration.  Then
# it guarantees that the distribution is self-contained by making another
# tarfile.
distcheck: dist
	case '$(DIST_ARCHIVES)' in \
	*.tar.gz*) \
	  GZIP=$(GZIP_ENV) gzip -dc $(distdir).tar.gz | $(am__untar) ;;\
	*.tar.bz2*) \
	  bzip2 -dc $(distdir).tar.bz2 | $(am__untar) ;;\
	*.tar.lz*) \
	  lzip -dc $(distdir).tar.lz | $(am__untar) ;;\
	*.tar.xz*) \
	  xz -dc $(distdir).tar.xz | $(am__untar) ;;\
	*.tar.Z*) \
	  uncompress -c $(distdir).tar.Z | $(am__untar) ;;\
	*.shar.gz*) \
	  GZIP=$(GZIP_ENV) gzip -dc $(distdir).shar.gz | unshar ;;\
	*.zip*) \
	  unzip $(distdir).zip ;;\
	esac
	chmod -R a-w $(distdir)
	chmod u+w $(distdir)
	mkdir $(distdir)/_build $(distdir)/_inst
	chmod a-w $(distdir)
	test -d $(distdir)/_build || exit 0; \
	dc_install_base=`$(am__cd) $(distdir)/_inst && pwd | sed -e 's,^[^:\\/]:[\\/],/,'` \
	  && dc_destdir="$${TMPDIR-/tmp}/am-dc-$$$$/" \
	  && am__cwd=`pwd` \
	  && $(am__cd) $(distdir)/_build \
	  && ../configure \
	    $(AM_DISTCHECK_CONFIGURE_FLAGS) \
	    $(DISTCHECK_CONFIGURE_FLAGS) \
	    --srcdir=.. --prefix="$$dc_install_base" \
	  && $(MAKE) $(AM_MAKEFLAGS) \
	  && $(MAKE) $(AM_MAKEFLAGS) dvi \
	  && $(MAKE) $(AM_MAKEFLAGS) check \
	  && $(MAKE) $(AM_MAKEFLAGS) install \
	  && $(MAKE) $(AM_MAKEFLAGS) installcheck \
	  && $(MAKE) $(AM_MAKEFLAGS) uninstall \
	  && $(MAKE) $(AM_MAKEFLAGS) distuninstallcheck_dir="$$dc_install_base" \
	        distuninstallcheck \
	  && chmod -R a-w "$$dc_install_base" \
	  && ({ \
	       (cd ../.. && umask 077 && mkdir "$$dc_destdir") \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" install \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" uninstall \
	       && $(MAKE) $(AM_MAKEFLAGS) DESTDIR="$$dc_destdir" \
	            distuninstallcheck_dir="$$dc_destdir" distuninstallcheck; \
	      } || { rm -rf "$$dc_destdir"; exit 1; }) \
	  && rm -rf "$$dc_destdir" \
	  && $(MAKE) $(AM_MAKEFLAGS) dist \
	  && rm -rf $(DIST_ARCHIVES) \
	  && $(MAKE) $(AM_MAKEFLAGS) distcleancheck \
	  && cd "$$am__cwd" \
	  || exit 1
	$(am__post_remove_distdir)
	@(echo "$(distdir) archives ready for distribution: "; \
	  list='$(DIST_ARCHIVES)'; for i in $$list; do echo $$i; done) | \
	  sed -e 1h -e 1s/./=/g -e 1p -e 1x -e '$$p' -e '$$x'
distuninstallcheck:
	@test -n '$(distuninstallcheck_dir)' || { \
	  echo 'ERROR: trying to run $@ with an empty' \
	       '$$(distuninstallcheck_dir)' >&2; \
	  exit 1; \
	}; \
	$(am__cd) '$(distuninstallcheck_dir)' || { \
	  echo 'ERROR: cannot chdir into $(distuninstallcheck_dir)' >&2; \
	  exit 1; \
	}; \
	test `$(am__distuninstallcheck_listfiles) | wc -l` -eq 0 \
	   || { echo "ERROR: files left after uninstall:" ; \
	        if test -n "$(DESTDIR)"; then \
	          echo "  (check DESTDIR support)"; \
	        fi ; \
	        $(distuninstallcheck_listfiles) ; \
	        exit 1; } >&2
distcleancheck: distclean
	@if test '$(srcdir)' = . ; then \
	  echo "ERROR: distcleancheck can only run from a VPATH build" ; \
	  exit 1 ; \
	fi
	@test `$(distcleancheck_listfiles) | wc -l` -eq 0 \
	  || { echo "ERROR: files left in build directory after distclean:" ; \
	       $(distcleancheck_listfiles) ; \
	       exit 1; } >&2
check-am: all-am
check: check-recursive
all-am: Makefile
installdirs: installdirs-recursive
installdirs-am:
install: install-recursive
install-exec: install-exec-recursive
install-data: install-data-recursive
uninstall: uninstall-recursive

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am

installcheck: installcheck-recursive
install-strip:
	if test -z '$(STRIP)'; then \
	  $(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	    install_sh_PROGRAM="$(INSTALL_STRIP_PROGRAM)" INSTALL_STRIP_FLAG=-s \
	      install; \
	else \
	  $(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	    install_sh_PROGRAM="$(INSTALL_STRIP_PROGRAM)" INSTALL_STRIP_FLAG=-s \
	    "INSTALL_PROGRAM_ENV=STRIPPROG='$(STRIP)'" install; \
	fi
mostlyclean-generic:

clean-generic:

distclean-generic:
	-test -z "$(CONFIG_CLEAN_FILES)" || rm -f $(CONFIG_CLEAN_FILES)
	-test . = "$(srcdir)" || test -z "$(CONFIG_CLEAN_VPATH_FILES)" || rm -f $(CONFIG_CLEAN_VPATH_FILES)
	-test -z "$(DISTCLEANFILES)" || rm -f $(DISTCLEANFILES)

maintainer-clean-generic:
	@echo "This command is intended for maintainers to use"
	@echo "it deletes files that may require special tools to rebuild."
clean: clean-recursive

clean-am: clean-generic clean-libtool mostlyclean-am

distclean: distclean-recursive
	-rm -f $(am__CONFIG_DISTCLEAN_FILES)
	-rm -f Makefile
distclean-am: clean-am distclean-generic distclean-hdr \
	distclean-libtool distclean-tags

dvi: dvi-recursive

dvi-am:

html: html-recursive

html-am:

info: info-recursive

info-am:

install-data-am:

install-dvi: install-dvi-recursive

install-dvi-am:

install-exec-am:

install-html: install-html-recursive

install-html-am:

install-info: install-info-recursive

install-info-am:

install-man:

install-pdf: install-pdf-recursive

install-pdf-am:

install-ps: install-ps-recursive

install-ps-am:

installcheck-am:

maintainer-clean: maintainer-clean-recursive
	-rm -f $(am__CONFIG_DISTCLEAN_FILES)
	-rm -rf $(top_srcdir)/autom4te.cache
	-rm -f Makefile
maintainer-clean-am: distclean-am maintainer-clean-generic

mostlyclean: mostlyclean-recursive

mostlyclean-am: mostlyclean-generic mostlyclean-libtool

pdf: pdf-recursive

pdf-am:

ps: ps-recursive

ps-am:

uninstall-am:

.MAKE: $(am__recursive_targets) install-am install-strip

.PHONY: $(am__recursive_targets) CTAGS GTAGS TAGS all all-am \
	am--refresh check check-am clean clean-cscope clean-generic \
	clean-libtool cscope cscopelist-am ctags ctags-am dist \
	dist-all dist-bzip2 dist-gzip dist-hook dist-lzip dist-shar \
	dist-tarZ dist-xz dist-zip distcheck distclean \
	distclean-generic distclean-hdr distclean-libtool \
	distclean-tags distcleancheck distdir distuninstallcheck dvi \
	dvi-am html html-am info info-am install install-am \
	install-data install-data-am install-dvi install-dvi-am \
	install-exec install-exec-am install-html install-html-am \
	install-info install-info-am install-man install-pdf \
	install-pdf-am install-ps install-ps-am install-strip \
	installcheck installcheck-am installdirs installdirs-am \
	maintainer-clean maintainer-clean-generic mostlyclean \
	mostlyclean-generic mostlyclean-libtool pdf pdf-am ps ps-am \
	tags tags-am uninstall uninstall-am


dist-hook:
	@ for subdir in include; do \
	  if test "$$subdir" = .; then :; else \
	    test -d $(distdir)/$$subdir \
	    || mkdir $(distdir)/$$subdir \
	    || exit 1; \
	    cp -p $(srcdir)/$$subdir/*.h  $(distdir)/$$subdir \
	      || exit 1; \
	    rm -f $(distdir)/$$subdir/autoconf.h; \
	  fi; \
	done
	@if [ -f $(top_srcdir)/RELEASENOTES.html ]; then \
	  cp -p $(top_srcdir)/RELEASENOTES.html $(distdir)/RELEASENOTES.html; \
	else \
	  notes=`ls -1rt $(top_srcdir)/doc/release-notes/*.html | head -1`; \
	  if [ -f $$notes ]; then \
	    cp $$notes $(distdir)/RELEASENOTES.html; \
	  else \
	    touch $(distdir)/RELEASENOTES.html; \
	  fi; \
	fi

install-pinger:
	chown root $(DESTDIR)$(DEFAULT_PINGER)
	chmod 4711 $(DESTDIR)$(DEFAULT_PINGER)

check: have-cppunit check-recursive

have-cppunit:
	@if test "$(SQUID_CPPUNIT_INC)$(SQUID_CPPUNIT_LA)$(SQUID_CPPUNIT_LIBS)" = "" ; then \
		echo "FATAL: 'make check' requires cppunit and cppunit development packages. They do not appear to be installed." ; \
		exit 1 ; \
	fi

.PHONY: have-cppunit

# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
