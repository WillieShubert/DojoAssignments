function bubbleSort(arr){
  for(var i = 0; i < arr.length; i++){
    var sorted = true;
    for(var j = 0; j<arr.length-1; j++){
      if(arr[j]>arr[j+1]){
        var temp = arr[j+1];
        arr[j+1] = arr[j];
        arr[j] = temp;
        sorted = false
      }
      if(sorted == true){
        return arr;
      };
    };
  };
}
test = [2,4,1,7,4,63,4];
console.log(bubbleSort(test))
