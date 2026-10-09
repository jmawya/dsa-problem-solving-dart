class LRUCache{
  int capacity;
  Map<int,int>cache={};
  LRUCache(this.capacity);
  int get(int key){
    if(!cache.containsKey(key)){
      return -1;
    }
    int value=cache[key]!;
    cache.remove(key);
    cache[key]=value;
    return value;
  }
  void put(int key, int value){
    if(cache.containsKey(key)){
      cache.remove(key);
    }
    if(cache.length>=capacity){
      cache.remove(cache.keys.first);
    }
    cache[key]=value;
  }
}
main(){
  LRUCache lru=LRUCache(2);
  lru.put(1,1);
  lru.put(2,2);
  print(lru.get(1));
  lru.put(3,3);
  print(lru.get(2));
  lru.put(4,4);
  print(lru.get(1));
  print(lru.get(3));
  print(lru.get(4));

  lru.put(1, 10);  // cache: {1=10}
  print(lru.get(1));      // return 10
  lru.put(2, 20);  // cache: {1=10, 2=20}
  lru.put(3, 30);  // cache: {2=20, 3=30}, key=1 was evicted
  print(lru.get(2));      // returns 20
  print(lru.get(1));  //-1

}