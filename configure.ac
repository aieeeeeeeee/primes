
# Sources and Examples Used
# http://inti.sourceforge.net/tutorial/libinti/autotoolsproject.html
# http://www.gnu.org/savannah-checkouts/gnu/automake/manual/html_node/aclocal-Options.html#aclocal-Options
# http://www.gnu.org/software/automake/manual/automake.html
# http://tomlee.co/2012/08/autotools-for-humans-part-1/

AC_INIT([Prime Numbers], [0.1], [wallnerryan@brandeis.edu])
# Source directories
AC_CONFIG_SRCDIR([src/main.c])

# Initiate AUTOMAKE
AM_INIT_AUTOMAKE

# Macro to find GCC compiler
AC_PROG_CC

# Minimum Autoconf version required.
#AC_PREREQ(2.60)

# Output files
AC_CONFIG_FILES([Makefile
             src/Makefile])

# Generate code to build/configure
AC_OUTPUT