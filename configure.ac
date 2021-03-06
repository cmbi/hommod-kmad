#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.68])
AC_INIT([hommod_kmad], [1.0])
AC_CONFIG_AUX_DIR(config)
AM_INIT_AUTOMAKE([subdir-objects])
AC_CONFIG_SRCDIR([src/Sequences.h])
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_MACRO_DIR([m4])

# Old versions of autoconf require explicitly including the macros.
m4_include([m4/ax_boost_program_options.m4])

# Checks for programs.
AC_PROG_CXX
AC_PROG_CC
AC_PROG_INSTALL
AC_CHECK_PROGS([CPPCHECK], [cppcheck])
if test -z "$CPPCHECK"; then
  AC_MSG_WARN([cppcheck not found - continuing without cppcheck support])
fi

# Checks for libraries.
AX_BOOST_BASE # Adding the boost version fails using old autoconf. Should be
              # 1.48.
AX_BOOST_PROGRAM_OPTIONS
AM_CONDITIONAL([HAVE_CPPCHECK], [test -n "$CPPCHECK"])

# Checks for header files.
AC_CHECK_HEADERS([sys/ioctl.h termios.h libconfig.h])

# Checks for typedefs, structures, and compiler characteristics.
# AC_CHECK_HEADER_STDBOOL # Doesn't work in old versions of autoconf
AC_C_INLINE
AC_TYPE_INT16_T
AC_TYPE_INT32_T
AC_TYPE_INT64_T
AC_TYPE_INT8_T
AC_TYPE_SIZE_T
AC_TYPE_UINT16_T
AC_TYPE_UINT32_T
AC_TYPE_UINT64_T
AC_TYPE_UINT8_T

# Checks for library functions.
AC_FUNC_ERROR_AT_LINE
AC_FUNC_FORK
AC_CHECK_FUNCS([dup2 floor pow socket sqrt strchr strerror])
# debug
AC_ARG_ENABLE(debug,
AS_HELP_STRING([--enable-debug],
               [enable debugging, default: no]),
[case "${enableval}" in
             yes) debug=true ;;
             no)  debug=false ;;
             *)   AC_MSG_ERROR([bad value ${enableval} for --enable-debug]) ;;
esac],
[debug=false])

AM_CONDITIONAL(DEBUG, test x"$debug" = x"true")

AC_CONFIG_FILES([Makefile])
AC_OUTPUT

