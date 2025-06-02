AUTOMAKE_OPTIONS = subdir-objects
ACLOCAL_AMFLAGS = ${ACLOCAL_FLAGS}

bin_PROGRAMS = app

# Use .cpp files passed in from pkg-config
app_SOURCES = app.cpp @MYLIB_SOURCES@

# Compiler flags from .pc file
app_CPPFLAGS = @MYLIB_CFLAGS@
app_LDADD = @MYLIB_LIBS@