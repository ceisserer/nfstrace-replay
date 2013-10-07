CC      = g++
CFLAGS  = -Wall -O2 -std=c++11
LDFLAGS = -lncurses

OBJ = nfsreplay.o gc.o nfstree.o operations.o parser.o

all: nfsreplay

nfsreplay: $(OBJ)
	$(CC) $(CFLAGS) -o nfsreplay $(OBJ) $(LDFLAGS)

%.o: %.cpp
	$(CC) $(CFLAGS) -c $<

clean:
	rm nfsreplay *.o -f