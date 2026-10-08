class ListNode{
    int val;
    ListNode ? next;
    ListNode([this.val=0,this.next]);
}
class Solution {
  ListNode? removeNthFromEnd(ListNode? head, int n) {
    ListNode dummy=ListNode(0,head);
    ListNode ? left=dummy;
    ListNode ? right=head;
    while(n>0&& right!=null){
      right=right.next;
      n--;
    }
    while(right!=null){
      left=left!.next;
      right=right.next;
    }
    left!.next=left.next!.next;
    return dummy.next;
  }
}
// Convert List<int> → Linked List
ListNode? createList(List<int> arr) {
  if (arr.isEmpty) return null;

  ListNode head = ListNode(arr[0]);
  ListNode current = head;

  for (int i = 1; i < arr.length; i++) {
    current.next = ListNode(arr[i]);
    current = current.next!;
  }

  return head;
}

// Convert Linked List → List<int>
List<int> removeNthFromEnd(ListNode? head) {
  List<int> result = [];

  while (head != null) {
    result.add(head.val);
    head = head.next;
  }

  return result;
}
void main() {
  Solution solution = Solution();

  // Test Case 1
  ListNode? head = createList([1, 2, 3, 4, 5]);
  int n = 2;

  ListNode? result = solution.removeNthFromEnd(head, n);

  print(removeNthFromEnd(result));
}