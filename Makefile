CFLAGS = -Iglad/include -lglfw3 -lX11 -lm
CC = gcc

VPATH = src glad

test_opengl : main.c
		$(CC) $? $(CFLAGS) -o $@ glad/build/gl.o

.PHONY = run
run : test_opengl
		./test_opengl

