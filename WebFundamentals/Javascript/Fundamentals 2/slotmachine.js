var quarters = 50

function slotmachine(quarters){
while (quarters>=0) {
    quarters--;

    var chance = math.trunc((math.random()*100+1);
    var win = math.trunc((math.random()*100+50);

    if(chance = 20){
      quarters = quarters+win;
    }
    if(quaters = 0){
      console.log("Game Over")
    }
  console.log(quaters)
}
return quarters
