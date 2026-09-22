class Solution {
  List<int> dailyTemperatures(List<int> temperatures) {
    List<int>result=List<int>.filled(temperatures.length,0);
    List<int> stake=[];

    for(int i=0;i<temperatures.length;i++){
      int t=temperatures[i];
      while(stake.isNotEmpty && t>temperatures[stake.last]){
        int e=stake.removeLast();
        int f=i-e;
        result[e]=f;
      }
      stake.add(i);
    }
    //print(stake);
    return result;


  }
}
main(){
  Solution so=Solution();

  print(so.dailyTemperatures([73,74,75,71,69,72,76,73]));
  print(so.dailyTemperatures([30,40,50,60]));
  print(so.dailyTemperatures([22,21,20]));
}