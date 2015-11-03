LIBNAME = libgreet.dylib
EXENAME = hw

$(EXENAME): main.o $(LIBNAME)
	$(CXX) -o $@ $(LDFLAGS) main.o -L. -lgreet

$(LIBNAME): greet.o
	$(CXX) -shared $(LDFLAGS) -o $@ $<

%.o: %.cxx
	$(CXX) -c $< $(CXXFLAGS)

clean:
	rm -f *.o $(EXENAME) $(LIBNAME)

install: $(EXENAME) $(LIBNAME) helloworld/greet.hxx
	# Install executable.
	mkdir $(PREFIX)/bin
	cp $(EXENAME) $(PREFIX)/bin/helloworld
	# Install header.
	mkdir -p $(PREFIX)/include/helloworld
	cp helloworld/greet.hxx $(PREFIX)/include/helloworld
	# Install library.
	mkdir $(PREFIX)/lib
	cp $(LIBNAME) $(PREFIX)/lib
