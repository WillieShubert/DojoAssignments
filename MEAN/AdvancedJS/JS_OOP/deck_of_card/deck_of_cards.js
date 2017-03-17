function Card(suit, value, name){
  this.suit = suit;
  this.value = value;
  this.name = name;
}

function Deck(){
  this.names = ['Ace', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King'];
	this.suits = ['Hearts','Diamonds','Spades','Clubs'];
	var cards = [];
  for( var s = 0; s < this.suits.length; s++ ) {
        for( var n = 0; n < this.names.length; n++ ) {
            cards.push( new Card(this.suits[s], n+1, this.names[n] ) );
        }
    }
  return cards;
}
Deck.prototype.deal = function(){
  var card;
  if( deck.length > 0 ) {
    var randIndex = Math.floor( Math.random() * deck.length );
    card = deck.splice( randIndex, 1 )[0];
  }
  return card;
}
Deck.prototype.shuffle = function(){
    for (var i = this.deck.legnth - 1; i > 0; i--) {
        var swap = Math.floor(Math.random() * (i + 1));
        var temp = this.deck[i];
        this.deck[i] = this.deck[swap];
        this.deck[swap] = temp;
    }
    return this.deck;
}

Deck.prototype.reset = function(){}

function Player(name){
    this.name = name;
    this.hand = [];
}

myDeck = new Deck();
console.log(myDeck);
var Willie = new Player('Willie');
var Amir = new Player('Amir')
console.log(Willie, Amir);
myDeck.shuffle();
console.log(myDeck);
