//this is not linked list but stack immplemented with linked list
#include <iostream>
using namespace std;
struct node{
	int data;
	struct node* next;
};

struct stack{
	struct node *head;
	
	stack(): head(nullptr){}
	void insert(int data)
	{
		struct node* newNode = new node;
		newNode->data = data;
		newNode->next = head;
		head = newNode;
	}
	void deleteNode()
	{
		if(head->next == nullptr)
			cout<<"Your stack is empty";
		else
		{
			struct node *toPop = head;
			head = head->next;
			free(toPop);
		}
	}
	void top()
	{
		cout<<head->data<<" ";
	}
};
int main()
{
	struct stack stk;
	stk.insert(12);
	stk.insert(123);
	stk.insert(34);
	stk.insert(23);
	stk.top();
	stk.deleteNode();
	stk.deleteNode();
	stk.top();
}
