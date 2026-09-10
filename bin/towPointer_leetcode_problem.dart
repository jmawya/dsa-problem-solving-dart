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


}

