class Card(object):
    def __init__(self, suit, value):
        self.suit = suit
        self.value = value

class Deck(object):
    def __init__(self):
        self.deck = []
        suits = ['hearts', 'spades', 'diamonds', 'clubs']
        values = [1,2,3,4,5,6,7,8,9,10,11,12,13]
        for suit in suits:
            for value in values:
                self.deck.append(Card(suit, value))

mydeck = Deck()
for card in mydeck.deck:
    print card.suit, card.value

class Player(object):
    def __init__(self, name):
        self.name = name


class Game(object):
    def __init__(self):
        self.game = []
        player = ['Ronnel', 'Nikki', "Willie"]
        for name in player:
            self.game.append(Player(name))

mygame = Game()
for player in mygame.game:
    print player.name
