import 'dart:math';

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  int diameterOfBinaryTree(TreeNode? root) {
    int res = 0;
    int dfs(TreeNode? curr) {
      if (curr == null) {
        return 0;
      }
      int left = dfs(curr.left);
      int right = dfs(curr.right);

      res = max(res, left + right);
      return 1 + max(left, right);
    }

    dfs(root);
    return res;
  }
}

main() {
  TreeNode root = TreeNode(
    1,
    null,
    TreeNode(2, TreeNode(3, TreeNode(5)), TreeNode(4)),
  );
  Solution so = Solution();
  print(so.diameterOfBinaryTree(root));
}
