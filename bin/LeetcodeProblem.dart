main(){
  List<String> strs = ["eat", "tea", "tan", "ate", "nat", "bat"];
  Map<String,List<String>> group={

  };
  for(int i=0;i<strs.length;i++){
    String word=strs[i]; //eat
    List<String> latter=[]; /// ['e','a','t']
    for(int j=0;j<word.length;j++){
      latter.add(word[j]); ///'e','a','t
    }
    for(int j=0;j<latter.length;j++){
      for(int k=j+1;k<latter.length;k++){
        if(latter[j].codeUnitAt(0)>latter[k].codeUnitAt(0)) {
          String temp = latter[j];
          latter[j] = latter[k];
          latter[k] = temp;

          ///after completing the outer loop the list is ['a','e','t']
          ///print(latter);
        }
      }

    }
    String key='';
    for(int j=0;j<latter.length;j++){
      key=key+latter[j]; ///aet-> base word
    }
    if(group.containsKey(key)){
      group[key]!.add(word); /// in here, word isn't inside a [] because list already exist
      /// group[key]= groug['aet']=[eat] , so in this key we are adding value
    }
    else{
      group[key]=[word]; ///value should be an List //we are updating student['age']=24 ; 'age':24;
    }

  }
  //print(group);
  List<List<String>> ky=[];
  for(String k in group.keys){ ///'aet' // 'ant' //'abt'
    ky.add(group[k]!); ///group['aet']=['eat','ttea, ate] // group['ant']=[tan, nat] //group['abt']=['bat']
  }

  print(ky);




  ///Given two strings s and t, return true if t is an anagram of s, and false otherwise.

  String m = "anagram", p = "nagaram";
  Map<String,int> gro={};
  if(m.length!=p.length){
    print('false');
  }
  for(int i=0;i<m.length;i++) {
    if (gro.containsKey(m[i])) {
      gro[m[i]] = gro[m[i]]! + 1;
    }
    else {
      gro[m[i]] = 1;
    }
  }

  print(gro);
  for (int j = 0; j < p.length; j++) {
    ///p[j]
    if (!gro.containsKey(p[j])) {
      print("false");
      break;
    }
    gro[p[j]] = gro[p[j]]!-1;
    if(gro[p[j]]==0){
      gro.remove(p[j]);
    }

    if(gro.isEmpty){
      print('true');
    }

  }
  Solution na=Solution();
  //na.containsDuplicate([1,2,3,1]);
  print(na.containsDuplicate([1,2,3,1]));

  Solution1 no=Solution1();
  //no.twoSum([2,3,4,5],6);
  print(no.twoSum([2,3,4,5],6));


  Solution2 su=Solution2();
  print(su.topKFrequent([1,1,1,2,2,3], 2));
  print(su.topKFrequent([7,7], 1));
  print(su.topKFrequent([1], 1));
  print(su.topKFrequent([1,2,1,2,1,2,3,1,3,2], 2));

  Solution4 sd=Solution4();
  print(sd.encode(["Hello","World"]));
  print(sd.decode("5#Hello5#World"));



}
class Solution {
  bool containsDuplicate(List<int> nums) {
    Set<int> nu={};
    for(int i=0;i<nums.length;i++){
      if(nu.contains(nums[i])){
        return true;
      }
      nu.add(nums[i]);

    }
    return false;
  }
}
class Solution1 {
  List<int> twoSum(List<int> nums, int target) {
    List<int> sd=[];
    for(int i=0;i<nums.length;i++){
      for(int j=0;j<i;j++){
        if(nums[i]+nums[j]==target){
          sd.addAll([i,j]);

        }
      }
    }
    return sd;

  }
}

class Solution2 {
  List<int> topKFrequent(List<int> nums, int k) {
    Map<int,int>ele={
    };
    for(int i=0;i<nums.length;i++){
      int b=nums[i];  //1
      int e=1;
      if(ele.containsKey(nums[i])){
        ele[nums[i]]=ele[nums[i]]!+1;
      }
      else{
        ele[nums[i]]=e;
      }
    }

    // print(ele);
    ///[1,8,9,2]
    //print('Ele ${ele.keys}');
    List<int> ke=ele.keys.toList();
    for(int i=0;i<ke.length;i++){
      for(int j=i+1;j<ke.length;j++){
        if(ele[ke[i]]! < ele[ke[j]]!){
          int temp=ke[i];
          ke[i]=ke[j];
          ke[j]=temp;
        }
      }
    }
    List<int> te=[];
    for(int i=0;i<k;i++){
      te.add(ke[i]);
    }
    return te;

    /// print(ele.values);
    /// ele.forEach((key,value) {
    /// if(value>=k){
    /// te.add(key);
    ///   }
    /// });

  }

}
///strs = ["Hello","World"]
class Solution4{
  dynamic encodeString='';
  String encode(List<String> strs){
    for(int i=0;i<strs.length;i++){
      int s=strs[i].length;
      encodeString=encodeString+('${strs[i].length}#${strs[i]}');
    }
     return encodeString;
  }
///  5#Hello5#World
  List<String> decode(String encoded_string){
     List<String> result=[];
     int i=0;
     while(i<encodeString.length){///0<encodeString.length //7<encodeString.length
       int j=i; //j=0  //7
       while(encodeString[j]!='#'){
         j++;  //j=1  //j=8
       }
       print('J value $j'); // j value is 1 and 8
       int len=int.parse(encodeString.substring(i,j)); //int len=5 //int len=5
       i=j+1; //i=2 //9
       String wo=encodeString.substring(i,i+len); ///i+len=7 start counting from 0 //Hello  //9 to 14
       result.add(wo);
       i=i+len;


     }

    return result;
  }
}







