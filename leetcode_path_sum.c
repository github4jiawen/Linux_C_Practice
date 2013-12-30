bool hadPathSum(TreeNode *root,int sum){
	if(!root) return false;
	bool match=false;
	match=hadPathSum(root,sum,0);
	return match;
}

bool hadPathSum(TreeNode *node,int sum,int upSum){
	upSum+=node->val;
	if ((node->left==NULL)&&node->right==NULL)
	{
		if (upSum==sum) return true;
		else return false;
	}
	bool tmp=false;
	if (node->left!=NULL)
	{
		tmp|=hadPathSum(node->left,sum,upSum);
	}
	if (node->right!=NULL){
		tmp|=hadPathSum(node->right,sum,upSum);
	}
	return tmp;
}	

