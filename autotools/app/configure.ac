AC_PREREQ([2.69])
AC_INIT([app], [0.1.0])
AM_INIT_AUTOMAKE([1.10 -Wall no-define foreign])
AC_CONFIG_SRCDIR([app.cpp])
AC_CANONICAL_HOST
AC_CONFIG_FILES([Makefile])
AC_PROG_CXX

# Get flags from pkg-config
PKG_CHECK_MODULES([MYLIB], [mylib])

MYLIB_SOURCES=`$PKG_CONFIG --variable=sources mylib`
AC_SUBST([MYLIB_SOURCES])

# Export to Makefile
AC_SUBST([MYLIB_CFLAGS])
AC_SUBST([MYLIB_LIBS])
AC_SUBST([MYLIB_SOURCES])

AC_OUTPUT
