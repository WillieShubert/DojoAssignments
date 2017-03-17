function runninglogger(){
  console.log("I'm running")
}
runninglogger();

function multiplyByTen(val){
  var product = val * 10;
  return product;
}
console.log(multiplyByTen(5));

function stringReturnOne(){
  console.log("A hard coded string")
}
function stringReturnTwo(){
  console.log("A differnt hard coded string")
}
console.log(stringReturnOne(),stringReturnTwo());

function caller(param){
  if (typeof param === "function"){
    console.log("yes, a function");
    param();
  }
  else{
    return "not a function";
  }
}
// correct call
console.log(caller(stringReturnOne()));
// incorrect call
console.log(caller(1));

function myDoubleConsoleLog(param1, param2){
  if (typeof param1 && param2 == "function"){
    console.log(param1, param2);
  }
}
myDoubleConsoleLog(runninglogger(), stringReturnTwo());

function caller2(param){
  console.log('starting...');
  setTimeout(function(){
    if (typeof param == "function"){
        param();
      }
    }, 2000);
      console.log('ending?');
      return "interesting";
  }

console.log(caller2(myDoubleConsoleLog(runninglogger(), stringReturnTwo())));
