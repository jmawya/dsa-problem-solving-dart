import 'dart:math';
class Solution {
  int maxProfit(List<int> prices) {
    int left=0;
    int right=1;
    int maxProfit=0;
    while(right<prices.length){
      if(prices[left]<prices[right]){
        int profit=prices[right]-prices[left];
        maxProfit=max(maxProfit,profit);
      }
      else {
        left=right;
      }
      right=right+1;
    }
    return maxProfit;
  }
}
main(){
  Solution so=Solution();
  print(so.maxProfit([7,1,5,3,6,4]));
  print(so.maxProfit([7,6,4,3,1]));
}