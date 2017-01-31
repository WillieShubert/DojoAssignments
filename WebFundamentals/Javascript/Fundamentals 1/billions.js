var day = 1
var reward = .01
var reached = false

while(day != Infinity){
  day++;
  reward = reward*2;

  if(day === 31){
  console.log("30 days reward is "+reward)
  }

  if (reward >= 1000000000 && reached==false){
    console.log("1 billion reward is achieved on day "+day)
    reached = true
  }

  if (reward == Infinity){
    console.log("1 infinity reward is achieved on day "+day)
     break;
  }
}
