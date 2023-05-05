require './question'

class Turn
  def initialize (activePlayer, p1, p2)
    if activePlayer.name == p1.name
      activePlayer = p2
    elsif activePlayer.name == p2.name
      activePlayer = p1
    end
    puts "----- NEW TURN -----"
    question = Question.new(rand(10), rand(10))
    question.ask
    question.answer
    if question.correct
      puts "yes queen, you now have " + activePlayer.lives.to_s + " lives left"
    else
      activePlayer.wrong
      puts "what the fuck, you now have " + activePlayer.lives.to_s + " lives left"
    end
  end
end