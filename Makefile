OBJECTS = HommodKmad.o Sequences.o ScoringMatrix.o FeaturesProfile.o Profile.o substitutionMatrix.o misc.o txtProc.o vecUtil.o findVal.o

hommod_kmad: $(OBJECTS)
	g++ -std=c++0x  -o $@ $(OBJECTS) /usr/local/lib/libboost_program_options.a
HommodKmad.o: HommodKmad.cpp
	g++ -std=c++0x  -c HommodKmad.cpp 
Sequences.o: Sequences.h  Sequences.cpp
	g++ -std=c++0x  -c Sequences.cpp 
ScoringMatrix.o: ScoringMatrix.h ScoringMatrix.cpp
	g++ -std=c++0x  -c ScoringMatrix.cpp 
FeaturesProfile.o: FeaturesProfile.h FeaturesProfile.cpp
	g++ -std=c++0x  -c FeaturesProfile.cpp
Profile.o: Profile.h Profile.cpp
	g++ -std=c++0x  -c Profile.cpp 
substitutionMatrix.o: substitutionMatrix.h substitutionMatrix.cpp
	g++ -std=c++0x  -c substitutionMatrix.cpp
misc.o: misc.h misc.cpp
	g++ -std=c++0x  -c misc.cpp
txtProc.o: txtProc.h txtProc.cpp
	g++ -std=c++0x  -c txtProc.cpp
vecUtil.o: vecUtil.h vecUtil.cpp
	g++ -std=c++0x  -c vecUtil.cpp
findVal.o: findVal.h findVal.cpp
	g++ -std=c++0x  -c findVal.cpp
clean: 
	rm -f *.o hommod_kmad *.h.gch

