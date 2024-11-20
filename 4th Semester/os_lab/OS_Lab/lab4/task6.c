#include <stdio.h>

	struct time{
	int hrs, mins, sec;	
};
struct time add(struct time t1, struct time t2)
{
	struct time t;
	t.hrs = t1.hrs + t2.hrs;
	t.mins = t1.mins + t2.mins;
	t.sec = t1.sec + t2.sec;
	if(t.hrs>=23)
		t.hrs=0;
	if(t.mins>=60)
		{t.hrs = t.hrs + 1; t.mins=0;}
	if(t.sec>=60)
		{t.mins=t.mins+1; t.sec=0;}

	return t;	
}

int main()
{

	struct time one, two;
	one.hrs = 4; two.hrs = 6;
	one.mins = 45; two.mins = 23;
	one.sec = 23; two.sec = 10;
	struct time ans = add(one, two);
	printf("Time: %d:%d:%d\n",ans.hrs, ans.mins, ans.sec);		
	
}

