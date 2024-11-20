#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
struct node {
    char name[51];
    struct node *next;
};

typedef struct node list;
void add(list **head, char *newname) {
    list *newnode = (list*)malloc(sizeof(list));
    strcpy(newnode->name, newname);
    newnode->next = NULL;

    if (*head == NULL) {
        *head = newnode;
    }
    else {
        list *current = *head;
        while (current->next != NULL) {
            current = current->next;
        }
        current->next = newnode;
    }
}

bool search(list *head, char *name) {
    list *current = head;
    while (current != NULL) {
        if (strcmp(current->name, name) == 0) {
            return true;
        }
        current = current->next;
    }
    return false;
}

int main() {
    int querry;
    char name[50];
    list *head = NULL;
    printf("Type 1, 2 or 3\n    1)Add a name.\n    2)Search a name.\n    3)Quit.\n");
    scanf("%d", &querry);
    while(querry!=3)
    {
    	if(querry==1)
	{
	    printf("Enter a name to save it in the linked list: \n");
	    scanf("%s", name);
	    add(&head, name);
	}
	else if(querry==2)
	{
	    printf("Enter a name to Search: \n");
	    scanf("%s", name);
	    int boolean = search(head, name);
	    boolean==1? printf("%d The name was found.\n", boolean) : printf("%d  Not found.\n", boolean);
	}
	printf("Type 1, 2 or 3: ");
	scanf("%d", &querry);
    }
    return 0;
}
