
class Solution {
  int findMin(List<int> nums) {
    int left = 0;
    int right = nums.length - 1;

    while (left < right) {
      if (nums[left] < nums[right]) {
        return nums[left];
      }

      int mid = (left + right) ~/ 2;

      if (nums[mid] >= nums[left]) {
        left = mid + 1;
      } else {
        right = mid;
      }
    }

    return nums[left];
  }
}
main(){
  Solution so=Solution();
  print(so.findMin([3,4,5,1,2]));
  print(so.findMin([3,1,2]));
  print(so.findMin([4,5,6,7,0,1,2]));
}