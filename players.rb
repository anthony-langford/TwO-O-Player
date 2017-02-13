class Player
  attr_reader :name
  attr_reader :score

  def initialize(name)
    @name = name
    @score = 0
  end

  player1 = Player.new('tony')
  player2 = Player.new('god')

end