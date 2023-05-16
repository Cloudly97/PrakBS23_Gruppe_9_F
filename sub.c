#include "sub.h"
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <sys/socket.h>
#include <unistd.h>

#define RESPONSESIZE 1024
#define MAX_PAYLOAD_SIZE 256

typedef struct {
    char key[MAX_PAYLOAD_SIZE];
    char value[MAX_PAYLOAD_SIZE];
} KeyValue;

#define MAX_ENTRIES 100

KeyValue keyValueStore[MAX_ENTRIES];
int numEntries = 0;

void send(int sockfd, const void *buf, size_t len, int flags);

void quit(int client_socket);

int shutdown(int sockfd, int how);

void send_response(int client_socket, const char *response) {
    send(client_socket, (void *) response, strlen(response), 0);
}

void methodHandler(int method, const char *key, const char *value, int client_socket) {
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
    strncpy(keyValueStore[numEntries].key, key, MAX_PAYLOAD_SIZE);
    strncpy(keyValueStore[numEntries].value, value, MAX_PAYLOAD_SIZE);
    numEntries++;

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
    bool keyFound = false;
    for (int i = 0; i < numEntries; i++) {
        if (strcmp(keyValueStore[i].key, key) == 0) {
            keyFound = true;
            snprintf(response, RESPONSESIZE, "GET operation: Key: \"%s\", Value: \"%s\" found in the store.\r\n",
                     key, keyValueStore[i].value);
            send_response(client_socket, response);
            break;
        }
    }

    if (!keyFound) {
        snprintf(response, RESPONSESIZE, "GET operation: Key: \"%s\" not found in the store.\r\n", key);
        send_response(client_socket, response);
    }
}

void del(const char *key, int client_socket) {
    char response[RESPONSESIZE];
    if (key == NULL) {
        snprintf(response, RESPONSESIZE, "DELETE operation: Key is null. Use DELETE:KEY\r\n");
        send_response(client_socket, response);
        return;
    }

// Delete key from the store
    bool keyFound = false;
    for (int i = 0; i < numEntries; i++) {
        if (strcmp(keyValueStore[i].key, key) == 0) {
            keyFound = true;
            for (int j = i; j < numEntries - 1; j++) {
                strncpy(keyValueStore[j].key, keyValueStore[j + 1].key, MAX_PAYLOAD_SIZE);
                strncpy(keyValueStore[j].value, keyValueStore[j + 1].value, MAX_PAYLOAD_SIZE);
            }
            numEntries--;
            break;
        }
    }

    if (keyFound) {
        snprintf(response, RESPONSESIZE, "DELETE operation: Key: \"%s\" successfully deleted from the store.\r\n", key);
        send_response(client_socket, response);
    } else {
        snprintf(response, RESPONSESIZE, "DELETE operation: Key: \"%s\" not found in the store.\r\n", key);
        send_response(client_socket, response);
    }
}

void quit(int client_socket) {
    char response[RESPONSESIZE];
    snprintf(response, RESPONSESIZE, "See you soon!\r\n");
    send_response(client_socket, response);
    shutdown(client_socket, SHUT_RDWR);
    close(client_socket);
}