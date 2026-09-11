class Solution {
  List<int> twoSum(List<int> numbers, int target) {

    int left=0;
    //List<int> tsum=[];
    int right=numbers.length-1;
    while(left<right){
      List<int> tsum=[];

      int sum=numbers[left]+numbers[right];
      if(sum==target){
        tsum.addAll([left+1,right+1]);
        return tsum;

      }
      else if(sum<target){
        left++;
      }
      else{
        right--;
      }


    }
    return [];
  }
}

void main(){
  Solution pal=Solution();
  print(pal.twoSum([2,7,11,15],9));
  print(pal.twoSum([-1,0], -1));

  SolutionThreeSum three=SolutionThreeSum();
  print(three.threeSum([-1,0,1,2,-1,-4]));
  print(three.threeSum( [0,1,1]));
  print(three.threeSum([0,0,0]));


}

class SolutionThreeSum {
  List<List<int>> threeSum(List<int> nums) {
    List<List<int>> sum=[];
    nums.sort();
    for(int i=0;i<nums.length;i++){
      int a=nums[i];
      if(i>0 && a==nums[i-1]){
        continue;
      }
      int left=i+1;
      int right=nums.length-1;

      while(left<right){
        int sumsa=a+nums[left]+nums[right];
        if(sumsa==0){
          sum.add([a,nums[left],nums[right]]);
          left++;
          right--;
          while(left<right && nums[left]==nums[left-1]){
            left++;
          }
          while(left<right && nums[right]==nums[right+1]){
            right--;
          }


        }
        else if(sumsa>0){
          right--;
        }
        else if(sumsa<0){
          left++;
        }



      }

    }
    return sum;

  }
}