class Question
  attr_reader :question
  attr_reader :answer

  SYMS = { " plus " => :+, " minus " => :-, " multipled by " => :*, " divided by " => :/ }

  def initialize
    num1 = rand(1..20)
    num2 = rand(1..20)
    sym = SYMS.to_a.sample
    @answer = num1.send(sym[1], num2)
    @question = "What is " + num1.to_s + sym[0] + num2.to_s + "?"
  end

end