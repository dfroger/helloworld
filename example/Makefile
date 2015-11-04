EXENAME=hw

$(EXENAME): main.o
	$(CXX) -o $@ $(LDFLAGS) main.o -L$(CONDA_ENV_PATH)/lib -Wl,-rpath,$(CONDA_ENV_PATH)/lib -lgreet

%.o: %.cxx
	$(CXX) -c $< $(CXXFLAGS) -I$(CONDA_ENV_PATH)/include

clean:
	rm -f *.o $(EXENAME)
