#include "keyValStore.h"

#define MAX_ENTRIES 100

typedef struct {
    char key[100];
    char value[100];
} KeyValue;

KeyValue keyValueStore[MAX_ENTRIES];
int numEntries = 0;

void keyvaluestore() {
    if (numEntries > 0) {
        for (int i = 0; i < numEntries; i++) {
            printf("Nummer:%d Key:%s Value:%s\n", i, keyValueStore[i].key, keyValueStore[i].value);
        }
    } else {
        printf("Liste ist leer\n");
    }
}
