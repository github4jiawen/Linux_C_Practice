/*binarytree.c*/
#include "stdlib.h"
#include "binarytree.h"

static link make_node(unsigned char item)
{
	link p=malloc(sizeof *p);
	p->item=item;
	p->l=p->r=NULL;
	return p;
}

static void free_node(link p)
{
	free(p);
}

link init(unsigned char VLR[],unsigned char LVR[],int n)
{
	link t;
	int k;
	if (n<=0)
	{
		return NULL;
	}
	for (k=0;VLR[0]!=LVR[k],k++)
	{
		t=make_node(VLR[0]);
		t->l=init(VLR+1,LVR,k);
		t->r=init(VLR+1+k,LVR+1+k,n-k-1);
		return t;
	}
}
