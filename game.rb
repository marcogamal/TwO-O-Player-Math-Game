class Game

  attr_accessor :num1, :num2
  attr_reader :answer

  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
    @answer = @num1 + @num2
  end
  
end 