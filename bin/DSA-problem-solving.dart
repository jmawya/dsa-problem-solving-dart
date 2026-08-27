import 'dart:io';
void main() {
  //Given an integer, determine whether it is positive, negative, or zero.
  int num = -5;
  if (num > 0) {
    print('positive number: $num');
  }
  else if (num < 0) {
    print('Negative number:$num');
  }
  else {
    print('Zero');
  }

  ///Given three integers, find the largest number without using any built-in function.
  List<int> aa = [1, 8, 3, 9];
  int largest = aa[0];
  for (int i = 1; i < aa.length; i++) {
    if (aa[i] > largest) {
      largest = aa[i];
      //print(largest);
    }
    //print(largest);

  }
  print(largest);

  ///ascending order sorting problem
  List<int> number = [5, 7, 1, 8, 3, 0];
  for (int i = 0; i < number.length; i++) {
    for (int j = i + 1; j < number.length; j++) {
      if (number[i] > number[j]) {
        int temp = number[i];
        number[i] = number[j];
        number[j] = temp;
      }
    }
  }
  print(number);


  ///Given an array of integers, find the number that occurs the most times.
  List<int> num1 = [1, 5, 9, 5, 8, 5, 9, 8, 1];

  int ei = 0;
  int value = 0;
  int highest = 0;
  for (int i = 0; i < num1.length; i++) {
    for (int j = 0; j < num1.length; j++) {
      if (num1[i] == num1[j]) {
        ei = ei + 1;
      }
    }
    if (highest < ei) {
      highest = ei;
      value = num1[i];
      // print(i);
    }

    //Map<int, int> name = {num[i]: e};
    ei = 0;
    //print(name);
  }
  print(value);


  //Given an array of integers, find the second-largest number without sorting the array.
  List <int> num2=[1,9,7,2,3];
  for(int i=0;i<num2.length;i++){
    for(int j=i+1;j<num2.length;j++){
      if(num2[i]<num2[j]){
        int temp=num2[i];
        num2[i]=num2[j];
        num2[j]=temp;

      }

    }

  }
  //print(num);
  print(num2[1]);

  //Palendrom or not
  String name='MOM';
  String eo='';
  for(int i=name.length-1;i>=0;i--){
    eo=eo+name[i];
    //print(name[i]);
  }
  print(eo);
  if(name==eo){
    print('Palendrom');
  }else{
    print('none Palendrom');
  }
  ///Given an array of integers, remove duplicate values without using Set.
  List<int> num4 = [1, 5, 9, 5, 5, 9, 8, 1];
  List<int> newnum=[];
  for(int i=0;i<num4.length;i++){
    bool match=false;
    for(int j=0;j<i;j++){
      if(num4[i]==num4[j]){
        match=true;
        break;
      }
    }
    if(!match){
      newnum.add(num4[i]);
    }
  }
  print(newnum);

  // Given an array of integers, find the missing number from a sequence of numbers from 1 to n.
  List<int>num5=[1,2,4,5];
  List<int> ec=[];
  //int e=0;
  for(int i=0;i<num5.length-1;i++){
    //for(int j=i+1;j<=i+1;j++){
    ///i=i+1; ///if we use i++ then i value is re-assaign. but if we use j=i+1
    ///it will not reassaign the i value
    //int j=i+1;
    //print(i);
    int j=i+1;
    if(num5[j]!=num5[i]+1) {
      ec.add(num5[i] + 1);
    }
    //}
  }
  print(ec);

  /// Given an integer, find the factorial of that number.

  int we=4;
  int ?ep;
  for(int i=1;i<=we;i++){
    ep=i*we;
  }
  print(ep);

  /// Given an integer, count how many digits it contains.

  int a = 136;
  int en = 0;
  //int number=a;
  for (int  number=a; number>0;) {
    int num = number % 10; //6 //3 //1
    en = en + 1;
    number = number ~/ 10; //13 //1 //0
    //print(e);
  }
  print(en);






}