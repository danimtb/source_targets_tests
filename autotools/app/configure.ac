AC_PREREQ([2.69])
AC_INIT([app], [0.1.0])
AM_INIT_AUTOMAKE([foreign -Wall])
AC_CONFIG_SRCDIR([app.cpp])
AC_PROG_CXX
PKG_PROG_PKG_CONFIG

PKG_CHECK_MODULES([MYLIB], [mylib])

MYLIB_SOURCES=`$PKG_CONFIG --variable=sources mylib`
if test -z "$MYLIB_SOURCES"; then
  AC_MSG_ERROR([Could not get mylib sources from pkg-config])
fi

# Write MYLIB_SOURCES to an include file
echo "MYLIB_SOURCES = $MYLIB_SOURCES" > Makefile.include

AC_CONFIG_FILES([
  Makefile
])
AC_OUTPUT
