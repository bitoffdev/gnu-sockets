init_sockaddr.o: init_sockaddr.c
	gcc -c init_sockaddr.c

make_socket.o: make_socket.c
	gcc -c make_socket.c

server: make_socket.o server.c
	gcc -o server make_socket.o server.c

client: init_sockaddr.o client.c
	gcc -o client init_sockaddr.o client.c

.PHONY: clean
clean:
	rm client server *.o
