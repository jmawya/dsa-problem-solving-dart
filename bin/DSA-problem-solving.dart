void main(){
  //Given an integer, determine whether it is positive, negative, or zero.
  int num=-5;
  if(num>0){
    print('positive number: $num');
  }
  else if(num<0){
    print('Negative number:$num') ;

  }
  else{
    print('Zero');
  }
  ///Given three integers, find the largest number without using any built-in function.
  List<int> aa=[1,8,3,9];
  int largest=aa[0];
  for(int i=1;i<aa.length;i++){
    if(aa[i]>largest){
      largest=aa[i];
      //print(largest);
    }
    //print(largest);

  }
  print(largest);



}