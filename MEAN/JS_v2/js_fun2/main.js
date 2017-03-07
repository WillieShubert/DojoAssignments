
var sumRange = function(x,y){
  var sum = 0
  for(var x; x <= y; x++){
    sum += x;
    }
    console.log(sum);
  }
sumRange(5,7);

var arrMin = function(arr){
  var min = arr[0];
  for(var i=1; i< arr.length; i++){
    if (min > arr[i]){
      min = arr[i];
    }
  }
  console.log(min)
}
arrMin([1, 5, 90, 25, -3, 0]);

var arrAvg = function(arr){
  var sum = 0;
  for(var i=0; i< arr.length; i++){
    sum += arr[i];
  }
  var avg = sum/arr.length;
  console.log(avg);
}
arrAvg([1, 5, 90, 25, -3, 0]);

var object = {
  name: "An Array for Analysis",
  sum : sumRange,
  min : arrMin,
  avg : arrAvg,
}

var person = {
  name : "Willie",
  distance_traveled : 0,
}
