# include <stdio.h>
 
void bubbleSort(int arr[],int n)
{
    int i,j,t;
     for(i=0;i<n-1;i++)
        for(j=0;j<n-i-1;j++)
            if(arr[j+1]<arr[j])
            {
              t=arr[j+1];
              arr[j+1]=arr[j];
              arr[j]=t;
             }
}
 
void print(int arr[],int n)    //打印数组
{
    int i=0;
    for(;i<n;i++)
    {
        printf("%d  ",arr[i]);
    }
    printf("\n");
}
int main(void)
{
    int arr[]={49,15,52,64,98};    //测试数据
    print(arr,5);
    bubbleSort(arr,5);
        printf("排序后的结果：\n");
    print(arr,5);
    return 0;
}