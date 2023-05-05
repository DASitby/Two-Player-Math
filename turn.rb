require './question'

class Turn
  def initialize (activePlayer)
    puts "----- NEW TURN -----"
    question = Question.new(rand(10), rand(10), activePlayer.name)
    question.ask
    question.answer
    if question.correct
      puts "YES! You are correct."
    else
      activePlayer.wrong
      puts "Seriously? No!"
    end
  end
end