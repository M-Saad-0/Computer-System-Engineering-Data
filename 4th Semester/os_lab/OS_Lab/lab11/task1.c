#include <stdio.h>
#define PID 0
#define AT 1
#define BT 2
#define RT 3
#define ST 4
#define ET 5
#define WT 6
#define TAT 7
#define CH 8
#define N 7
#define M 5
void display(int arr[M][N+1]);
int main()
{
    int process[M][N+1], i, q=5, max=0, iter=0, j, ct=0;
    printf("Enter burst times for %d processes: ",M);
    for(i=0; i<M; i++)
    {
        process[i][AT] = 0;
        scanf("%d", &process[i][BT]); 
    }

    for(i=0; i<M; i++)
    {
        if(max<process[i][BT])
          max=process[i][BT];
        process[i][RT] = process[i][BT];
        process[i][ST] = i*q;
        process[i][CH] = 1; 
    }

    iter = max/q;
    for(i=0;i<8;i++)
    	process[i][PID]=i+1;
    display(process);
    
    for(j=0; j<iter; j++)
    {
        for(i=0; i<M; i++)
        {
            
            if(process[i][RT]>0)
            {
                process[i][RT] = process[i][RT]-q;
                ct = ct + 5;
                if(process[i][RT]==0)
                {
                    process[i][ET] = ct;
                    process[i][CH] = 0;
                    process[i][WT] = process[i][ET]-process[i][BT];
                    process[i][TAT] = process[i][WT] + process[i][BT];
                }
            }
        }
        printf("\n");
    }
    for(i=0;i<8;i++)
    	process[i][PID]=i+1;
    display(process);

}
void display(int arr[M][N+1])
{
    printf("PID\tAT\tBT\tRT\tST\tET\tWT\tTAT\n");
    for (int i=0; i<M; i++)
    {
        for(int j=0; j<=N; j++)
        {
            printf("%d\t", arr[i][j]);
        }
        printf("\n");
    }
}
