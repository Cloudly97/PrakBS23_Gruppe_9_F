#include "sub.h"


#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <sys/socket.h>
#include <unistd.h>

#define RESPONSESIZE 1024
#define MAX_PAYLOAD_SIZE 256

void send(int sockfd, const void *buf, size_t len, int flags);
void quit(int client_socket);
int shutdown(int sockfd, int how);

void send_response(int client_socket, const char *response) {
    send(client_socket, (void *)response, strlen(response), 0);
}

void methodHandler(int method, const char *key, const char *value, char *client_socket) {
    char response[RESPONSESIZE];

    switch (method) {
        case 0: // get
            get(key, client_socket);
            break;
        case 1: // put
            put(key, value, client_socket);
            break;
        case 2: // del
            del(key, client_socket);
            break;
        case 3: // quit
            quit(client_socket);
            break;
        default:
            snprintf(response, RESPONSESIZE, "Unknown method\n");
            //snprintf is used to store the specified string till a specified length in the specified format
            send_response(client_socket, response);
            break;
    }
}

void put(const char *key, const char *value, int client_socket) {
    char response[RESPONSESIZE];

    if (value == NULL) {
        snprintf(response, RESPONSESIZE, "PUT operation: Value is null. Use PUT:KEY:VALUE\r\n");
        send_response(client_socket, response);
        return;
    }
    if (key == NULL) {
        snprintf(response, RESPONSESIZE, "PUT operation: Key is null. Use PUT:KEY:VALUE\r\n");
        send_response(client_socket, response);
        return;
    }

    // Insert or update key-value pair in the store
    snprintf(response, RESPONSESIZE, "PUT operation: Key: \"%s\", Value: \"%s\" successfully inserted/updated.\r\n",
             key, value);
    send_response(client_socket, response);
}

void get(const char *key, int client_socket) {
    char response[RESPONSESIZE];

    if (key == NULL) {
        snprintf(response, RESPONSESIZE, "GET operation: Key is null. Use GET:KEY\r\n");
        send_response(client_socket, response);
        return;
    }

    // Lookup value for the given key in the store
    snprintf(response, RESPONSESIZE, "GET operation: Key: \"%s\", Value: \"<value>\" found in the store.\r\n", key);
    send_response(client_socket, response);
}

void del(const char *key, int client_socket) {
    char response[RESPONSESIZE];

    if (key == NULL) {
        snprintf(response, RESPONSESIZE, "DELETE operation: Key is null. Use DELETE:KEY\r\n");
        send_response(client_socket, response);
        return;
    }

    // Delete key from the store
    snprintf(response, RESPONSESIZE, "DELETE operation: Key: \"%s\" successfully deleted from the store.\r\n", key);
    send_response(client_socket, response);
}

void quit(int client_socket) {
    char response[RESPONSESIZE];
    snprintf(response, RESPONSESIZE, "See you soon!\r\n");
    send_response(client_socket, response);
    shutdown(client_socket, SHUT_RDWR);
    close(client_socket);
}
