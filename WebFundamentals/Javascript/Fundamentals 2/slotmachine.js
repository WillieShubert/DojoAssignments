function slotmachine(quarters){
while (quarters>=0) {
    --quarters;

    var chance = Math.floor((Math.random()*100)+1);
    var win = Math.floor((Math.random()*50)+50);

    if(chance === 40){
      quarters = quarters+win;
      console.log("BIG WINNER! You now "+quarters+" quarters after winning "+win);
    }
    if(quarters === 0){
      return "0 Quarters! Game Over, Big Loser";
    }
  }
}
console.log(slotmachine(3000));
