require './player'
require './turn'

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
activePlayer = player1 

Turn.new(activePlayer, player1, player2)

  