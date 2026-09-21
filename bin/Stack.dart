class Solution {
  int evalRPN(List<String> tokens) {
    List<int>stack=[];
    for(int i=0;i<tokens.length;i++){
      if(tokens[i]=='+'){
        int a=stack.removeLast();
        int b=stack.removeLast();
        stack.add(b+a);
      }
      else if(tokens[i]=='-'){
        int a=stack.removeLast();
        int b=stack.removeLast();
        stack.add(b-a);
      }
      else if(tokens[i]=='*'){
        int a=stack.removeLast();
        int b=stack.removeLast();
        stack.add(b*a);
      }
      else if(tokens[i]=='/'){
        int a=stack.removeLast();
        int b=stack.removeLast();
        stack.add(b~/a);
      }
      else{
        stack.add(int.parse(tokens[i]));
      }
    }
    return stack[0];
  }
}
main(){
  Solution so=Solution();
  print(so.evalRPN(["2","1","+","3","*"]));
  print(so.evalRPN(["10","6","9","3","+","-11","*","/","*","17","+","5","+"]));

}