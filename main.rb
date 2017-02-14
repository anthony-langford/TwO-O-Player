require 'pry'
require_relative './game.rb'
require_relative './question.rb'
require_relative './players.rb'

game = Game.new
game.turn
# @player1 = Players.new(gets.chomp)
# @player2 = Players.new(gets.chomp)

# while @player1.score < 3 && @player2.score < 3 do
  # question = game.question
  # q = question.question
  # a = question.answer
  # p a

  # if game.turn?
  # if @player1.turn
    # game.question1
    # p "----- NEW TURN -----"
    # p @player1.name + ": " + q
    # game.check_answer1
    # if STDIN.gets.chomp.to_i == a
    #   @player1.score += 1
    #   p "Correct!"
    #   @player1.turn = false
    #   @player2.turn = true
    # else
    #   p @player1.name + ": Wrong!"
    #   @player1.turn = false
    #   @player2.turn = true
    # end
    # p @player1.name + ": " + @player1.score.to_s + "/3 vs " + @player2.name + ": " + @player2.score.to_s + "/3"


  # else
    # game.question2
    # p "----- NEW TURN -----"
    # p @player2.name + ": " + q
    # game.check_answer2
    # if STDIN.gets.chomp.to_i == a
    #   @player2.score += 1
    #   p "Correct!"
    #   @player1.turn = true
    #   @player2.turn = false
    # else
    #   p @player2.name + ": Wrong!"
    #   @player1.turn = true
    #   @player2.turn = false
    # end
    # p @player1.name + ": " + @player1.score.to_s + "/3 vs " + @player2.name + ": " + @player2.score.to_s + "/3"


  # end

# end

# p "----- GAME OVER -----"
# p "Good bye!"