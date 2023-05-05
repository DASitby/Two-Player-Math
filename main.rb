require './player'
require './turn'

player1 = Player.new("1")
player2 = Player.new("2")
activePlayer = player1 
winner = nil
while winner == nil
  if activePlayer.name == player1.name
    activePlayer = player2
  elsif activePlayer.name == player2.name
    activePlayer = player1
  end
  Turn.new(activePlayer, player1, player2)
  puts "P1: " + player1.lives.to_s + "/3 vs P2: " + player2.lives.to_s + "/3"
  if player1.lives == 0
    winner = player2
  elsif player2.lives == 0 
    winner = player1
  end
end

puts "Player " + winner.name + " wins with a score of " + winner.lives.to_s + "/3"
puts "----- GAME OVER -----"
puts "Good bye!"