function Card(value, suit){
  this.value = value;
  this.suit = suit;
}

function Deck(){
  var value = ['Ace', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King'];
	var suit = ['Hearts','Diamonds','Spades','Clubs'];
  var self = this;

  this.cards = [];

  suit.forEach(function(suit){
    value.forEach(function(value){
      self.cards.push(new Card(value,suit));
    });
  });
  return this;
}

Deck.prototype.shuffle =function(){
// Used https://bost.ocks.org/mike/shuffle/ to build shuffle logic
var unshuffledEdge = this.cards.length,
    cardToShuffleIdx,
    temp;

while (unshuffledEdge > 0) {
  cardToShuffleIdx = Math.floor(Math.random() * unshuffledEdge);
  unshuffledEdge -= 1;
  temp = this.cards[cardToShuffleIdx]
  this.cards[cardToShuffleIdx] = this.cards[unshuffledEdge]
  this.cards[unshuffledEdge] = temp;
  }
return this
}

Deck.prototype.reset =function(){
  this.buildDeck().shuffle();
}
Deck.prototype.deal =function(){
  return (this.cards.length > 0) ? this.cards.pop() : null;
}

function Player(name){
  this.name = name;
  this.hand =[];
}
Player.prototype.takeCard = function(){
  this.hand.push(deck.dealRandomCard());
  return this;
}
Player.prototype.discard = function(cardIdx){
  if (this.hand.length > cardIdx){
    this.hand.splice(cardIdx, 1);
  }
  return this;
}
mydeck= new Deck();
console.log(mydeck.reset().shuffle().deck);
