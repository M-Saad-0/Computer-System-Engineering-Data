#include <iostream>
using namespace std;
class BankAccount{
	private:
		int balance;
	public:
		BankAccount()
		{
			balance = 3000;
		}
		void withdrawl(int wl)
		{
			balance = balance - wl;
		}
		void deposit(int dt)
		{
			balance = balance + dt;
		}
		int showBalance()
		{
			return balance;
		}
};
int main()
{
	
	int input, withdraw, deposit;
	BankAccount acc1;
	mark:
	cout<<"Enter '1' to withdraw money, '2' to deposit, '3' to see your balance and '4' to quit: ";
	cin>>input;
	if(input == 1)
	{
		cout<<"How much do you want to withdraw: ";
		cin>>withdraw;
		if(acc1.showBalance() < 500 || withdraw > acc1.showBalance())
		{
			cout<<"Not enough balance.";
		}
		else
		{
			acc1.withdrawl(withdraw);
		}
	}
	else if(input == 2)
	{
		cout<<"Enter amount to deposit: ";
		cin>>deposit;
		acc1.deposit(deposit);	
	}
	else if(input == 3)
	{
		cout<<"Your balance is "<<acc1.showBalance()<<endl;
	}
	else if(input == 4)
	{
		return 0;
	}
	else
	{
		cout<<"Wrong input.";
	}
	goto mark;
}
