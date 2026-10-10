class ListNode {
  int val;
  ListNode? next = null;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  bool hasCycle(ListNode head) {
    ListNode slow = head;
    ListNode fast = head;
    while (fast != null && fast.next != null) {
      fast != fast.next!.next;
      if (slow == fast) {
        return true;
      }
    }
    return false;
  }
}
