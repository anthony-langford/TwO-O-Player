require_relative './question.rb'
require_relative './players.rb'

class Game
  attr_reader = :turn

  def initialize
    p "Welcome!"
    p "Type in your names Player 1 and Player 2:"
  end

  def question
    question = Question.new
  end

  def turn?
    if @player1.turn
      true
    else
      false
    end
  end

  def win?
    if player1.turn
      p "You won!"
    end
  end

end