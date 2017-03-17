var myarr = [1,5,25,125,42];

// for (var index in myarr){
//   console.log(myarr[index]*5);
// }
for (var i=0; i<myarr.length; i++){
console.log(myarr[i]*5);
}

var myobject ={
  language: "Javascript",
  dojo: "Silicon Valley",
  favorite_instructor: "The Internet"
}

// Object.keys(myobject).forEach(function(key,value){
//   console.log(key,value, myobject[key]);
// })
// Iterate through an Object

for (var key in myobject){
  console.log(key,myobject[key]+' the value');
}
