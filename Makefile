SRC = sqlite3secure.c example_sqlite_encrypt.c
CC = gcc
CFLAGS = -DSQLITE_HAS_CODEC -lpthread -ldl
TARGET = wxsqlite3test
$(TARGET):
	gcc $(CFLAGS) $(SRC) -o $(TARGET)
clean:
	rm -f $(TARGET) *.db
