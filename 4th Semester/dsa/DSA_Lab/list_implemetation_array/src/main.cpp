 #include <iostream>
 using namespace std;
 #define n 100
 class stack{
	 int *arr;
	 int top;
	 public:
		stack()
		{
			arr=new int[n];
			top=-1;
		}
		void push(int x)
		{
			if(top==n-1)
			{
				cout<<"Stack Overflow";
				return;
			}
			top++;
			arr[top]=x;
		}
		void pop(int x)
		{
			if(top==-1)
			{
				cout<<"Stack Underflow";
				return;
			}
			top--;
		}
		bool empty()
		{
			return top==-1;
		}
		int tp()
		{
			if (top!=-1) return arr[top];
			return -1;
		}
		
 };
 int main()
 {
	 stack st;
	 st.push(1);
	 st.push(3);
	 st.push(4);
	 cout<<st.tp();
	 return 0;
 }
