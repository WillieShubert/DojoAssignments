var glazedDonuts = [
  {
    frosting: 'glazed',
    type: 'old fashioned',
    age: '15',
    time: 'minutes'
  },
  {
    frosting: 'glazed',
    type: 'regular',
    age: '5',
    time: 'minutes'
  },
  {
    frosting: 'glazed',
    type: 'jelly filled',
    age: '1',
    time: 'seconds'
  }
];

var purchase;
//You
if(glazedDonuts[0].age < 25 && (glazedDonuts[0].time == 'seconds' || glazedDonuts[0].time == 'minutes')){
  //shop owner
  purchase = glazedDonuts[0];
  console.log('You bought the donut');
}
else {
  console.log('sorry it has been out a bit longer');
}
