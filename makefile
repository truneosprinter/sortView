CC = gcc
CFLAGS = $(shell sdl2-config --cflags) -Wall -Wextra -O2
LDFLAGS = $(shell sdl2-config --libs)
SRC = main.c
OUT = SortView

all: $(OUT)

$(OUT): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o $(OUT) $(LDFLAGS)

run: $(OUT)
	./$(OUT)

clean:
	rm -f $(OUT)

