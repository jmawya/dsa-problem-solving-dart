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





}