#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include "keyValStore.h"
#include "sub.h"

#define BUFSIZE 1024
#define ENDLOSSCHLEIFE 1
#define PORT 5678

int main() {

    int sock_fd;
    int con_fd;

    struct sockaddr_in client;
    socklen_t client_len;
    char in[BUFSIZE];
    int bytes_read;

    sock_fd = socket(AF_INET, SOCK_STREAM, 0);
    if(sock_fd < 0){
        fprintf(stderr, "Socket konnte nicht erstelle werden\n");
        exit(-1);
    }

    int option = 1;
    setsockopt(sock_fd, SOL_SOCKET, SO_REUSEADDR, (const void *) &option, sizeof (int ));

    struct sockaddr_in server;
    server.sin_family = AF_INET;
    server.sin_addr.s_addr = INADDR_ANY;
    server.sin_port = htons(PORT);

    int binder = bind(sock_fd, (struct sockaddr *) &server, sizeof(server));
    if(binder < 0){
        fprintf(stderr, "Socket konnte nicht gebunden werden\n");
        exit(-1);
    }

    int listen_rt = listen(sock_fd, 5);
    if(listen_rt < 0){
        fprintf(stderr, "Socket konnte nicht listen gesetzt werden\n");
        exit(-1);
    }

    while (ENDLOSSCHLEIFE){
        con_fd = accept(sock_fd, (struct sockaddr *) &client, &client_len);
        printf("Client has been acceptet!\n");

        bytes_read = read(con_fd, in, BUFSIZE);
        while (bytes_read > 0){
            printf("Sending back the %d Bytes I received...\n", bytes_read);
            write(con_fd, in, bytes_read);
            bytes_read = read(con_fd, in, BUFSIZE);
        }
        close(con_fd);
    }
    close(sock_fd);
}
