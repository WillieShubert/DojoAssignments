var Todd = {
 name: "Todd",
 sayName: function(){
   console.log("Todd");
 }
}
Todd.sayName();

function NewPerson(name){
  return {
    name: name,
    sayName: function(){
      console.log(name);
    }
  }
}

var Jay = NewPerson('Jay')
var Sarah = NewPerson('Sarah')

Jay.sayName();
Sarah.sayName();

function Person(name){
  this.name = name;
  this.sayName= function(){
    console.log(name);
  }
}

var Jimmy = new Person('Jimmy');
Jimmy.sayName();
