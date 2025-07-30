CC = aarch64-linux-gnu-gcc
CFLAGS = -static
TARGET = init
SOURCE = init.c

all: $(TARGET)

$(TARGET): $(SOURCE)
	$(CC) $(CFLAGS) -o $(TARGET) $(SOURCE)

clean:
	rm -f $(TARGET)

.PHONY: all clean
