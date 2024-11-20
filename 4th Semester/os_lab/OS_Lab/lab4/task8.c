#include <stdio.h>
#include <string.h>
#include <stdlib.h>
struct link{
	char name[50];
	struct link *node;
};

static void Push(char arr[], struct link** top) {
	struct link *temp = (struct link *) malloc(sizeof(struct link));
	strcpy(temp->name, arr);
	temp->node= top;
	top = temp;
}
void Pop(struct link* top) {
	struct link *temp;
	if(top== NULL) return;
	temp = top;
	top=top->node;
	free (temp);
}
int main()
{
	char arr[50] = "Saad";
	struct link *top = NULL;
	Push("Saad", &top);
	struct link t = *top;
	printf("%s", t.name);
	Pop(top);	
}
