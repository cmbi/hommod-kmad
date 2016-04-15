bin_PROGRAMS = hommod_kmad 

shared_LDADD =	$(BOOST_PROGRAM_OPTIONS_LIB) 

shared_SOURCES	= src/Sequences.cpp \
		  src/ScoringMatrix.cpp \
		  src/Profile.cpp \
		  src/FeaturesProfile.cpp \
		  src/substitutionMatrix.cpp \
		  src/misc.cpp \
		  src/txtProc.cpp \
		  src/vecUtil.cpp \
		  src/findVal.cpp

include_HEADERS = src/Sequences.h \
		  src/ScoringMatrix.h \
		  src/Profile.h \
		  src/FeaturesProfile.h \
		  src/substitutionMatrix.h \
		  src/misc.h \
		  src/txtProc.h \
		  src/vecUtil.h \
		  src/findVal.h


hommod_kmad_SOURCES = $(shared_SOURCES) \
	       src/HommodKmad.cpp

hommod_kmad_LDADD = $(shared_LDADD)


AUTOMAKE_OPTIONS = foreign

if HAVE_CPPCHECK
cppcheck:
		$(CPPCHECK) --quiet --std=c++11 --enable=all \
			--suppress=missingIncludeSystem $(srcdir)/src
check:	cppcheck
endif
if DEBUG
AM_CPPFLAGS = -g3 -O0 \
	      -std=c++11 \
	      -pedantic \
	      -Wall \
	      -Werror \
	      -Wno-reorder \
	      $(BOOST_CPPFLAGS) \
	      -I$(srcdir)src/
else
AM_CPPFLAGS = -std=c++11 \
	      -pedantic \
	      -Wall \
	      -Werror \
	      -Wno-reorder \
	      $(BOOST_CPPFLAGS) \
	      -I$(srcdir)src/
endif
