class ListNode {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);
}

// Convert a normal List into a Linked List
ListNode? createLinkedList(List<int> values) {
  if (values.isEmpty) {
    return null;
  }

  ListNode head = ListNode(values[0]);
  ListNode current = head;

  for (int i = 1; i < values.length; i++) {
    current.next = ListNode(values[i]);
    current = current.next!;
  }

  return head;
}

// Reverse the Linked List
class Solution {
  ListNode? reverseList(ListNode? head) {
    ListNode? prev = null;
    ListNode? curr = head;

    while (curr != null) {
      ListNode? nxt = curr.next;

      curr.next = prev;

      prev = curr;
      curr = nxt;
    }

    return prev;
  }
}

// Print the Linked List
void printList(ListNode? head) {
  ListNode? current = head;

  while (current != null) {
    print(current.val);
    current = current.next;
  }
}

void main() {
  // Normal Dart List
  List<int> values = [1, 2, 3, 4, 5];

  // Convert List → Linked List
  ListNode? head = createLinkedList(values);

  // Reverse Linked List
  ListNode? reversedHead = Solution().reverseList(head);

  // Print the reversed Linked List
  printList(reversedHead);
}