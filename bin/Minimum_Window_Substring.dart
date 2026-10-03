class Solution{
  String minWindow(String s, String t){
    if(t.isEmpty){
      return "";
    }
    Map<String,int> countT={};
    for(int i=0;i<t.length;i++){
      String c=t[i];
      countT[c]=(countT[c]??0)+1;
    }
    Map<String,int>window={};
    int have=0;
    int need=t.length;
    List<int> result=[-1,-1];
    int resultList=s.length+1;
    int left=0;
    for(int right=0;right<s.length;right++){
      String c=s[right];
      window[c]=(window[c]??0)+1;
      if(countT.containsKey(c) && window[c]==countT[c]){
        have++;
      }
      while(have==need){
        if((right-left+1)<resultList){
          result=[left,right];
          resultList=right-left+1;
        }
        String leftChar=s[left];
        window[leftChar]=window[leftChar]!-1;
        if(countT.containsKey(leftChar) && window[leftChar]! < countT[leftChar]!){
            have--;
        }
        left++;
      }
    }
    if(result[0]==-1){
      return '';
    }
    return s.substring(result[0],result[1]+1);



  }
}
main(){
  Solution so=Solution();
  print(so.minWindow( "ADOBECODEBANC", "ABC"));
  print(so.minWindow( "a","aa"));
  print(so.minWindow( "a","a"));

}