CXX = g++

CXXFLAGS := -std=c++11 -W -Wall -Wextra -O2 $(CXXFLAGS)

.PHONY: clean

# grittibanzli binary tool
grittibanzli: main.cc grittibanzli.h grittibanzli.o
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) -o grittibanzli main.cc grittibanzli.o

grittibanzli.o: grittibanzli.cc grittibanzli.h
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) -c grittibanzli.cc

clean:
	$(RM) -r grittibanzli *.o
