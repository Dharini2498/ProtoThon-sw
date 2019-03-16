#include <stdio.h>
int main()
{
    int r, c = 1, b, i, j;

    printf("Enter number of rows: ");
    scanf("%d",&r);

    for(i=0; i<r; i++)
    {
        for(b=1; b <= r-i; b++)
            printf(" ");

        for(j=0; j <= i; j++)
        
        {
            if (j==0 || i==0)
                c = 1;
            else
                c = c*(i-j+1)/j;

            printf("%4d", c);
        }
        printf("\n");
    }

    return 0;
}
