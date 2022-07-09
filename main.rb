require './game'
require './player'

players = Player.new
turn = 1

while players.player1_lives > 0 && players.player2_lives > 0

  puts "---------- NEW TURN ----------"
  numbers = Game.new(rand(1..20), rand(1..20))
  name_method = "player#{turn}"
  lives_method = "lose_player#{turn}"
  num1 = numbers.num1
  num2 = numbers.num2
  puts "#{players.send name_method}: What does #{num1} plus #{num2} equal?"

  answer = numbers.answer
  guess = gets.chomp
  if answer == guess.to_i
    puts "Correct! #{num1} + #{num2} is #{answer}."
  else
    players.send lives_method
    puts "You lose a life! #{num1} + #{num2} does not equal #{guess}."
  end
  puts "Current score: Player 1 has #{players.player1_lives}/3 lives, while Player 2 has #{players.player2_lives}/3 lives."

  if turn == 1
    turn = 2
  else
    turn = 1
  end
end

puts "---------- GAME OVER ----------"
puts "Player #{turn} wins with a score of #{players.send "player#{turn}_lives"}/3!"
puts "See you again!" 