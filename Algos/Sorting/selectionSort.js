function selectionSort(arr){
  for(var i = 0; i<arr.length-1; i++){
    var min = i;
    for(var j = i+1; j<arr.length; i++){
      if(arr[min]>arr[j]){
        min = j;
      }
    }
    if(min!= i){
      temp = arr[min];
      arr[min] = arr[i];
      arr[i] = temp;
    }
  }
}
test = [2,4,1,7,4,63,4];
console.log(selectionSort(test))
