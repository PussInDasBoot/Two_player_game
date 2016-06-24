# questions.rb

class Question
  attr_reader :num1, :num2, :expression, :answer
  # Generating a question
  def initialize
    #gets two random numbers up to 20, makes an expression adding them
    @num1 = rand(20)
    @num2 = rand(20)
    @answer = @num1 + @num2
    @expression = "#{@num1} + #{@num2}"
  end

  def validate(response)
    @answer == response
  end

end