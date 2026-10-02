import 'dart:math';
class Solution {
  int lengthOfLongestSubstring(String s) {
    Set<String> charSet={};
    int left=0;
    int res=0;
    for(int right=0;right<s.length;right++){
      while(charSet.contains(s[right])){
        charSet.remove(s[left]);
        left++;
      }
      charSet.add(s[right]);
      res=max(res,right-left+1);
    }
    return res;
  }
}
main(){
  Solution so=Solution();
  print(so.lengthOfLongestSubstring("abcabcbb"));
  print(so.lengthOfLongestSubstring("pwwkew"));
  print(so.lengthOfLongestSubstring("bbb"));
}