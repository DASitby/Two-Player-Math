class Question
  attr_accessor :num1, :num2, :answer
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
    @answer = nil
    @result = false
  end

  def ask
    puts "What does " + @num1.to_s + " plus " + @num2.to_s + " equal?"
  end

  def answer
    @answer = gets.chomp
  end

  def correct
    if @answer.to_i == @num1.to_i + @num2.to_i
      true
    else
      false
    end
  end
end