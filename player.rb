class Player
  attr_accessor :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end
  def wrong
    @lives = @lives - 1
  end
end