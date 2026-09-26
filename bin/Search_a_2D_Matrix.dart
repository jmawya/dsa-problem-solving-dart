class Solution {
  bool searchMatrix(List<List<int>> matrix, int target) {
    if(matrix.isEmpty || matrix[0].isEmpty){
      return false;
    }
    int cols=matrix[0].length;
    int rows=matrix.length;

    int top=0;
    int bottom=rows-1;

    while(top<=bottom){
      int midRow=(top+bottom)~/2;
      if(target<matrix[midRow][0]){
        bottom=midRow-1;
      }
      else if(target>matrix[midRow][cols-1]){
        top=midRow+1;
      }
      else{
        break;
      }
    }
    if(top>bottom){
      return false;
    }
    int r=(top+bottom)~/2;
    int left=0;
    int right=cols-1;
    while(left<=right){
      int mid=(left+right)~/2;
      if(target==matrix[r][mid]){
        return true;
      }
      else if(target>matrix[r][mid]){
        left=mid+1;
      }
      else if(target<matrix[r][mid]){
        right=mid-1;
      }
    }
    return false;

  }
}

main(){
  Solution so=Solution();
  print(so.searchMatrix([[1,3,5,7],[10,11,16,20],[23,30,34,60]],3));

}