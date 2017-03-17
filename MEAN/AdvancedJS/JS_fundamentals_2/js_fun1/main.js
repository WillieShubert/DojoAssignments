var x = [3,5,"Dojo", "rocks", "Michael", "Sensei"];
var sum=0;
var array = [1, 5, 90, 25, -3, 0];
var min = array[0];
var sum2 =0;

for(var i=0; i< x.length; i++){
  console.log(x[i]);
}
x.push(100);
x.push(["hello", "world", "JavaScript is Fun"]);
console.log(x);

for(var i=0; i <= 500; i++){
  sum += i
}
console.log(sum);

for(var i=0; i< array.length; i++){
  if (min > array[i]){
    min = array[i];
  }
}
console.log(min);

for(var i=0; i< array.length; i++){
  sum2 += array[i];
}
var avg = sum2/array.length;
console.log(avg);

var newNinja = {
 name: 'Jessica',
 profession: 'coder',
 favorite_language: 'JavaScript', //like that's even a question!
 dojo: 'Dallas'
}

for (var key in newNinja) {
  if (newNinja.hasOwnProperty(key)) {
    console.log(key,': ', newNinja[key]);
    // console.log(newNinja[key]);
  }
}
