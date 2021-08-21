CC = gcc
LDFLAGS = -I$(CURDIR)/include -L$(CURDIR)/lib
LDLIBS = -lglfw3 -lopengl32 -lglu32 -lgdi32
CFLAGS = -g -Wall -std=c11

opengltut.exe: src/opengltut.o src/glad.o
	$(CC) ./src/opengltut.o ./src/glad.o $(CFLAGS) $(LDFLAGS) $(LDLIBS) -o opengltut.exe

src/glad.o: src/glad.c include/glad/glad.h

src/opengltut.o: src/opengltut.c include/glad/glad.h include/GLFW/glfw3.h
