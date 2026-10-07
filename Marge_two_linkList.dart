class ListNode{
  int val;
  ListNode ? next;
  ListNode([this.val=0,this.next]);
}
class Solution{
  ListNode ? mergeTwoLists(ListNode ? l1,ListNode ? l2){
    ListNode  dummy=ListNode();
    ListNode tail=dummy;
    while(l1!=null && l2!=null){
      if(l1.val<l2.val){
        tail.next=l1;
        l1=l1.next;
      }
      else{
        tail.next=l2;
        l2=l2.next;
      }
      tail=tail.next!;
    }
    if(l1!=null){
      tail.next=l1;
    }else{
      tail.next=l2;
    }
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
List<int> linkedListToList(ListNode? head) {
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
  ListNode? l1 = createList([1, 2, 4]);
  ListNode? l2 = createList([1, 3, 4]);

  ListNode? result = solution.mergeTwoLists(l1, l2);

  print(linkedListToList(result));

  // Test Case 2
  l1 = createList([]);
  l2 = createList([0]);

  result = solution.mergeTwoLists(l1, l2);

  print(linkedListToList(result));

  // Test Case 3
  l1 = createList([1]);
  l2 = createList([2]);

  result = solution.mergeTwoLists(l1, l2);

  print(linkedListToList(result));

  // Test Case 4
  l1 = createList([1, 3, 5]);
  l2 = createList([2, 4, 6]);

  result = solution.mergeTwoLists(l1, l2);

  print(linkedListToList(result));
}