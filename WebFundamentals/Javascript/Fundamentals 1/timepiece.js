var HOUR = 4;
var MINUTE = 5;
var PERIOD = "AM";

//wrong clock
if(HOUR >12 || HOUR <1){
  console.log("Not on my watch")
}
if(MINUTE >59 || MINUTE<0){
  console.log("Not on my watch")
}
//noon and midnight
if (HOUR === 12 && MINUTE !==0 && PERIOD === "PM"){
    console.log("It's "+ (MINUTE)+ " minutes past noon");
}
else
  if (HOUR === 12 && MINUTE !==0 && PERIOD === "AM"){
    console.log("It's "+ (MINUTE)+ " minutes past midnight");
}
//morning
else
  if (MINUTE === 5 && PERIOD === "AM"){
    console.log("It's 5 minutes after "+ (HOUR)+ " in the morning");
}
else
  if (MINUTE === 15 && PERIOD === "AM"){
    console.log("It's quarter past "+ (HOUR)+ " in the morning");
}
else
  if (MINUTE === 30 && PERIOD === "AM"){
    console.log("It's half past "+ (HOUR)+ " in the morning");
}
else
  if (MINUTE < 30 && PERIOD === "AM"){
  console.log("It's just after "+ (HOUR)+ " in the morning.");
}
else
  if (MINUTE>30 && PERIOD === "AM"){
  console.log("It's almost " + (HOUR+1)+ " in the morning");
}
//afternoon
else
  if (HOUR < 7 && MINUTE === 5 && PERIOD === "PM"){
    console.log("It's 5 minutes after "+ (HOUR)+ " in the afternoon");
  }
else
  if (HOUR < 7 && MINUTE === 30 && PERIOD === "PM"){
    console.log("It's half past "+ (HOUR)+ " in the afternoon");
}
else
  if (HOUR < 7 && MINUTE === 15 && PERIOD === "PM"){
    console.log("It's quarter past "+ (HOUR)+ " in the afternoon");
}
else
    if (HOUR < 7 && MINUTE<30 && PERIOD === "PM"){
    console.log("It's just after "+ HOUR+ " in the afternoon.");
  }
else
  if (HOUR < 7 && MINUTE>30 && PERIOD === "PM"){
    console.log("It's almost "+ (HOUR+1)+ " in the afternoon");
}
//night//
else
  if (HOUR > 7 && MINUTE === 5 && PERIOD === "PM"){
    console.log("It's 5 minutes after "+ (HOUR)+ " in the night");
}

else
  if (HOUR > 7 && MINUTE>30 && PERIOD === "PM"){
    console.log("It's quarter past "+ (HOUR)+ " in the night");
}
else
    if (HOUR > 7 && MINUTE<30 && PERIOD === "PM"){
    console.log("It's just after "+ HOUR+ " at night.");
  }
else
  if (HOUR > 7 && MINUTE>30 && PERIOD === "PM"){
    console.log("It's almost "+ (HOUR+1)+ " at night");
}
else
  if (HOUR > 7 && MINUTE === 30 && PERIOD === "PM"){
    console.log("It's half past "+ (HOUR)+ " at night");
}
else
  if (MINUTE === 15 && PERIOD === "PM"){
    console.log("It's quarter past "+ (HOUR)+ " in the evening");
}
