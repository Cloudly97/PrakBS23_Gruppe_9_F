#include "keyValStore.h"

#define MAX_ENTRIES 100

typedef struct {
    char key[100];
    char value[100];
} KeyValue;

KeyValue keyValueStore[MAX_ENTRIES];
int numEntries = 0;

void keyvaluestore() {
    if (numEntries > 0) { // Check if there are any entries in the key-value store
        for (int i = 0; i < numEntries; i++) { // Iterate through each entry
            printf("Number:%d Key:%s Value:%s\n", i, keyValueStore[i].key, keyValueStore[i].value); // Print the entry's number, key, and value
        }
    } else {
        printf("List is empty\n"); // Print a message indicating that the key-value store is empty
    }
}
