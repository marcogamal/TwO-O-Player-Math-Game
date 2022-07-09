class Player

  attr_accessor :player1_lives, :player2_lives
  attr_reader :player1, :player2

  def initialize()
    @player1 = 'Player 1'
    @player2 = 'Player 2'
    @player1_lives = 3
    @player2_lives = 3
  end

  def lose_player1
    @player1_lives = @player1_lives - 1
  end

  def lose_player2
    @player2_lives -= 1
  end

end 