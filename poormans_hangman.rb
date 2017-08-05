## Poorman's Hangman Game
#  Coded by Miguel A. Ibarra Jr.

class HangMan
  attr_reader :guess_count, :is_over
  attr_accessor :guess
	
  def initialize(word)
    @word = word
    if @word.length >= 12
      @guess_count = 9
    elsif @word.length >= 10 && @word.length < 12
      @guess_count = 8
    elsif @word.length >= 8 && @word.length < 10
      @guess_count = 7
    elsif @word.length >= 6 && @word.length < 8
      @guess_count = 6
    else
      @guess_count = 5
    end
    @is_over = false
  end
  
  # def check_cup(index)
  # 	@guess_count += 1
  # 	if @cups[index] == "ball"
  # 		@is_over = true
  # 	else
  # 		false
  # 	end
  # end
end

# user interface

puts "Player 1 what word do you want Player 2 to guess?"
stay_of_execution = gets.chomp.downcase

puts "Player 2, you are now entering the gallows, may Zeus be with you... \n"
game = HangMan.new(stay_of_execution)

puts "Player 2, the hangman will set you free if you can guess this secret word."

puts "You have #{game.guess_count} guesses to guess a letter or the entire word. Let's do this... \n"


while !game.is_over
  if game.guess_count == 1
    puts "This is your last chance, do you know the word, or any last words?"
    guess = gets.chomp.downcase
    game.guess
  else
    puts "This is your chance, guess a letter or the word."
    game.guess
  # if !game.check_cup(guess - 1)
  # 	puts "Nope! Try again."
  # end
end

# puts "You won in #{game.guess_count} guesses!"
