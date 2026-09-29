class Solution {
  int search(List<int> nums, int target) {
    int left=0;
    int right=nums.length-1;
    while(left<=right){
      int mid=(left+right)~/2;
      if(nums[mid]==target){
        return mid;
      }

      if(nums[left]<=nums[mid]){
        if(target>nums[mid]||target<nums[left]){
          left=mid+1;
        }else{
          right=mid-1;
        }
      }
      else{
        if(target<nums[mid]||target>nums[right]){
          ///if(target<nums[mid]||target>=nums[left]){
          right=mid-1;
        }else{
          left=mid+1;
        }
      }
    }
    return -1;
  }
}
main(){
  Solution so=Solution();
  print(so.search([4,5,6,7,0,1,2],0));
  print(so.search([4,5,6,7,0,1,2],3));

}

