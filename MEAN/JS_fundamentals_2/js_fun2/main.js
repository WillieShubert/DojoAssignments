
var sumRange = function(x,y){
  var sum = 0
  for(var x; x <= y; x++){
    sum += x;
    }
    return sum;
  }
sumRange(5,7);

var arrMin = function(arr){
  var min = arr[0];
  for(var i=1; i< arr.length; i++){
    if (min > arr[i]){
      min = arr[i];
    }
  }
  return min
}
arrMin([1, 5, 90, 25, -3, 0]);

var arrAvg = function(arr){
  var sum = 0;
  for(var i=0; i< arr.length; i++){
    sum += arr[i];
  }
  var avg = sum/arr.length;
  return avg;
}
arrAvg([1, 5, 90, 25, -3, 0]);

var object = {
  sum: function(x,y){
      var sum = 0
      for(var x; x <= y; x++){
        sum += x;
        }
        console.log(sum);
  },
  min : function(arr){
    var min = arr[0];
    for(var i=1; i< arr.length; i++){
      if (min > arr[i]){
        min = arr[i];
      }
    }
    console.log(min)
  },
  avg : function(arr){
    var sum = 0;
    for(var i=0; i< arr.length; i++){
      sum += arr[i];
    }
    var avg = sum/arr.length;
    console.log(avg);
  }
}

object.sum(10,90);
object.min([1, 5, 90, 25, -3, 0]);
object.avg([1, 5, 90, 25, -3, 0]);

var person = {
  name : "Willie",
  distance_traveled : 0,
  say_name: function(){
    console.log(person.name);
  },
  say_something: function(str){
    console.log(`${person.name} says: ${str}`)
  },
  walk : function(){
   console.log(`${person.name} is walking!`);
   person.distance_traveled += 3;
   return person;
  },
  run : function(){
  console.log(`${person.name} is running!`);
  person.distance_traveled += 10;
  return person;
  },
  crawl : function(){
   console.log(`${person.name} is crawling!`);
   person.distance_traveled += 1;
   return person;
  }
}
person.crawl()
person.walk()
person.run()
person.say_something("Holy cow")
