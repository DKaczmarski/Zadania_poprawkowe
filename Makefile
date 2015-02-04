CXX=g++
CXXFLAGS=-Wall
LFLAGS=
OBJS=main.o nameutil.o
OUTP=dk

dk: $(OBJS)
	$(CXX) $(LFLAGS) $(OBJS) -o $(OUTP)

main.o: main.cpp
	$(CXX) $(CXXFLAGS) -c main.cpp -o main.o

nameutil.o: nameutil.cpp
	$(CXX) $(CXXFLAGS) -c nameutil.cpp -o nameutil.o

clean:
	rm -f $(OBJS) $(OUTP)
