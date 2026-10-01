class TimeMap {
  Map<String,List<List<dynamic>>>map={};
  TimeMap() {}

  void set(String key, String value, int timestamp) {
    if(!map.containsKey(key)){
      map[key]=[];
    }
    map[key]!.add([timestamp,value]);
  }

  String get(String key, int timestamp) {
    if(!map.containsKey(key)){
      return "";
    }
    List<List<dynamic>> list=map[key]!;
    int left=0;
    int right=list.length-1;
    String answer="";
    while(left<=right){
      int mid=(left+right)~/2;
      if(list[mid][0]<=timestamp){
        answer=list[mid][1];
        left=mid+1;
      }
      else{
        right=mid-1;
      }
    }
    return answer;

  }

}



main(){
  TimeMap  timeMap= TimeMap();
  timeMap.set("alice", "happy", 1);  // store the key "alice" and value "happy" along with timestamp = 1.
  print(timeMap.get("alice", 1));           // return "happy"
  print(timeMap.get("alice", 2));           // return "happy", there is no value stored for timestamp 2, thus we return the value at timestamp 1.
  timeMap.set("alice", "sad", 3);    // store the key "alice" and value "sad" along with timestamp = 3.
  print(timeMap.get("alice", 3));           // return "sad"

}