
all: helloworld

helloworld: main.o
	g++ main.o -o helloworld 

main.o: main.cpp
	g++ -c main.cpp

clean:
	rm *.o helloworld