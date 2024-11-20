#include <stdio.h>
#define PID 0
#define AT 1
#define BT 2
#define ST 3
#define ET 4
#define WT 5
#define TAT 6
#define N 6

void sort(int arr[N][7]);
void display(int *arr);
void swap(int *e1, int *e2);

int main()
{
    int process[N][7];

    for(int i=0; i<N; i++)
    {
        process[i][PID] = i;
        printf("Enter Arrival Time for process %d: ", process[i][PID]);
        scanf("%d", &process[i][AT]);
        printf("Enter Burst Time for process %d: ", process[i][PID]);
        scanf("%d", &process[i][BT]);
        process[i][ST]=0;process[i][ET]=0;process[i][WT]=0;process[i][TAT]=0; 
    } 
    
    display((int *)process); 
    sort(process);
  
    process[0][ST]= process[0][AT];
    process[0][ET]= process[0][BT]+process[0][ST];
    process[0][WT]= 0;
    process[0][TAT]= process[0][BT]+process[0][WT];

    for(int l=1; l<N; l++)
    {
        process[l][ST] = process[l-1][ET];
        process[l][ET] = process[l][ST] + process[l][BT];
        process[l][WT] = process[l][ST]- process[l][AT];
        process[l][TAT] = process[l][BT] + process[l][WT];
    }
        display((int *)process); 


    
}

void display(int *arr)
{
    printf("\nPID\tAT\tBT\tST\tET\tWT\tTAT\n");
    for(int i=0; i<N; i++)
    {

        for(int j=0; j<7; j++)
        {
            printf("%d\t", *arr);
            arr++;
        }
        printf("\n");
    }
}

void swap(int *e1, int *e2)
{
    int t=*e1;
    *e1=*e2;
    *e2=t; 
}

void sort(int arr[N][7])
{
    int i=0, j=0;
	for(i=0; i<N; i++)
	{	
		for(j=i-1; j>=0; j--)
		{
			if(arr[j+1][BT]<arr[j][BT])
			{
               	swap(&arr[j+1][AT], &arr[j][AT]);
                swap(&arr[j+1][PID], &arr[j][PID]);
                swap(&arr[j+1][BT], &arr[j][BT]);
            }
			else 
				break;
		}
	}
}
