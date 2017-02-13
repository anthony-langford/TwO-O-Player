require 'pry'
require_relative './game.rb'
require_relative './question.rb'
require_relative './players.rb'

player1 = Player.new('tony')
player2 = Player.new('god')

question = Question.new
q = question.question
a = question.answer

p q
p a

if player1.turn == true

  p player1.name + ": " + q
  if STDIN.gets.chomp.to_i == a
    player1.score += 1
    p "Correct!"
  else
    p player1.name + ": Wrong!"
  end

else

  p player2.name + ": " + q
  if STDIN.gets.chomp.to_i == a
    player2.score += 1
    p "Correct!"
  else
    p player2.name + ": Wrong!"
  end

end