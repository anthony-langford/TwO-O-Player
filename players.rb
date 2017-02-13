class Player
  attr_reader :name
  attr_accessor :score
  attr_accessor :turn

  def initialize(name = "Player 1")
    @name = name
    @score = 0
    @turn = false
  end

end