//Problem 1 declarations get hoisted
var first_variable;
function firstFunc() {
  first_variable = "Not anymore!!!";
  console.log(first_variable);
}
//Problem 1 assignments and invocation maintain order
console.log(first_variable);
first_variable = "Yipee I was first!";
console.log(first_variable);

//Problem 2 declarations get hoisted
var food;
function eat() {
  var food;
  food = "half-chicken";
  console.log(food);
  food = "gone";       // CAREFUL!
  console.log(food);
}
//Problem 2 assignments and invocation maintain order
food = "Chicken";
eat();
console.log(food);

//Problem 3 declarations get hoisted
var new_word;
function lastFunc() {
  new_word = "old";
}
//Problem 3 assignments and invocation maintain order
new_word = "NEW!";
console.log(new_word);
