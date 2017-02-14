require_relative './question.rb'
require_relative './players.rb'

class Game
  attr_reader = :turn

  def initialize
    p "Welcome!"
    p "Type in your names Player 1 and Player 2:"

    name1 = gets.chomp
    if name1 == ""
      @player1 = Players.new("Player 1")
    else
      @player1 = Players.new(gets.chomp)
    end

    name2 = gets.chomp
    if name2 == ""
      @player2 = Players.new("Player 2")
    else
      @player2 = Players.new(gets.chomp)
    end
  end

  def question1
    question = Question.new
    @q = question.question
    @a = question.answer
    p @a
    p "----- NEW TURN -----"
    p @player1.name + ": " + @q
  end

  def question2
    question = Question.new
    @q = question.question
    @a = question.answer
    p @a
    p "----- NEW TURN -----"
    p @player2.name + ": " + @q
  end

  def check_answer1
    if STDIN.gets.chomp.to_i == @a
      @player1.score += 1
      p "Correct!"
      @player1.turn = false
      @player2.turn = true
      score
      win?
    else
      p @player1.name + ": Wrong!"
      @player1.turn = false
      @player2.turn = true
      score
      win?
    end
  end

  def check_answer2
    if STDIN.gets.chomp.to_i == @a
      @player2.score += 1
      p "Correct!"
      @player1.turn = true
      @player2.turn = false
      score
      win?
    else
      p @player2.name + ": Wrong!"
      @player1.turn = true
      @player2.turn = false
      score
      win?
    end
  end

  def score
    p @player1.name + ": " + @player1.score.to_s + "/3 vs " + @player2.name + ": " + @player2.score.to_s + "/3"
  end

  def turn
    if @player1.turn
      question1
      check_answer1
    else
      question2
      check_answer2
    end
  end

  def win?
    if @player1.score == 3
      p "----- GAME OVER -----"
      p @player1.name + " wins!"
      p "Good bye!"
    elsif @player2.score == 3
      p "----- GAME OVER -----"
      p @player1.name + " wins!"
      p "Good bye!"
    else
      turn
    end
  end

end