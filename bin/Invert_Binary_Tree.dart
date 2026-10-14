class TreeNode{
  int val;
  TreeNode ? left;
  TreeNode ? right;
  TreeNode([this.val=0,this.left,this.right]);

  @override
  String toString() {
    return '($val, $left, $right)';
  }
}
class Solution{
  TreeNode ? invertTree(TreeNode ? root){
    if(root==null){
      return null;
    }
    TreeNode ? temp=root.left;
    root.left=root.right;
    root.right=temp;
     //recursive function: function call itself
    invertTree(root.left);
    invertTree(root.right);

    return root;
  }
}
main(){
  TreeNode root=TreeNode(
    4,
    TreeNode(2,TreeNode(1),TreeNode(3)),
    TreeNode(7,TreeNode(6),TreeNode(9))
  );
  Solution so=Solution();
  print(so.invertTree(root));

}