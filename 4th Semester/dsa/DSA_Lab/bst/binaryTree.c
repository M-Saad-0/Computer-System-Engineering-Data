#include <stdio.h>
#include <stdlib.h>
struct treeNode* create(struct treeNode *head, int data);
struct treeNode *newNode(int data);
void inorder(struct treeNode *head);
struct treeNode{
	int data;
	struct treeNode *right;
	struct treeNode *left;
};


int main()
{
	struct treeNode *head = NULL;
	head = create(head, 10);
	head = create(head, 20);
	head = create(head, 30);
	head = create(head, 61);
	head = create(head, 2);
	head = create(head, 3);
	head = create(head, 11);
	head = create(head, 21);
	head = create(head, 31);
	head = create(head, 14);
	head = create(head, 12);
	head = create(head, 0);
	head = create(head, 71);
	head = create(head, 4);
	head = create(head, 892);
	inorder(head);

}

struct treeNode* create(struct treeNode *head, int data)
{
	if(head==NULL)
	{
		head = newNode(data);
		return head;
	}
	else if(data<=head->data)
		head->left=create(head->left, data);
	else
		head->right = create(head->right, data);
	return head;
}

struct treeNode *newNode(int data)
{
	struct treeNode *t = (struct treeNode *)malloc(sizeof(struct treeNode));
	t->data = data;
	t->left = t->right = NULL ;
	return t;
}

void inorder(struct treeNode *head)
{
	if(head!=NULL)
	{
		inorder(head->left);
		printf("%d  ", head->data);
		inorder(head->right);
	}
}
