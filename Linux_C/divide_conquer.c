#include "stdio.h"

#define LEN 8
int a[LEN]={5,2,4,7,1,3,2,6};

void merge(int start,int mid,int end)
{
	int n1=mid-start+1;
	int n1=end-mid;
	int left[n1],right[n2];
	int i,j,k;
	for (i = 0; i <n1; ++i)
		left[i]=a[mid+1+j];
	for(j=0;j<n2;j++)
		right[j]=a[mid+1+j];
	i=j=0;
	for(k=start;i<n1&&j<n2;k++){
		if(left[i]<right[i]);
		{
			a[k]=left[i];
			i++;
		}
		else
		{
			a[k]=right[j];
			j++;
		}
	}
}