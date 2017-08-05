## Poorman's Hangman Game
#  Coded by Miguel A. Ibarra Jr.

class HangMan
  attr_reader :guess_count, :is_correct, :prompt
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
    @is_correct = false
    @prompt = String.new(str="_") * word.length
    @guess_history = Array.new
  end

  def guess_char=(char)
    if @word.include?(char) && !@guess_history.include?(char)
      char_index = (0 ... @word.length).find_all { |i| @word[i,1] == char}
      char_index.each{|elment| @prompt[elment] = char}
      @guess_history << char
      @is_correct = false
      @guess_count -= 1
    elsif @word.include?(char) && @guess_history.include?(char)
      @is_correct = false
    elsif @guess_history.include?(char)
      @is_correct = false
    else
      @guess_history << char
      @is_correct = false
      @guess_count -= 1
    end
  end

  def guess_word=(guess)
    if @word == guess
      @is_correct = true
      @guess_count = 0
    elsif @guess_history.include?(guess)
      @is_correct = false
    else
      guess_history << guess
      @is_correct = false
      @guess_count -= 1
    end
  end

  
  # def check_cup(index)
  # 	@guess_count += 1
  # 	if @cups[index] == "ball"
  # 		@is_correct = true
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

# p game.guess_count

while game.guess_count != 0
  # p game.guess_count
  puts "This is what you have guessed so far:"
  puts "#{game.prompt}"
  if game.guess_count == 1
    puts "This is your last chance, do you know the word, or any last words?"
    guess = gets.chomp.downcase
    game.guess_word = guess
  else
    puts "You have #{game.guess_count} guesses left, guess a letter or the word."
    guess = gets.chomp.downcase
    if guess.length == 1
      game.guess_char = guess
    else
      game.guess_word = guess
    end
  end
  # if !game.check_cup(guess - 1)
  # 	puts "Nope! Try again."
  # end
end

if game.is_correct == true
  puts "You cheated the hangman! Good Job!"
else
  puts "Looks like you'll be hanging around for a long time... HAHAHAH... GAME OVER!"
end
# puts "You won in #{game.guess_count} guesses!"
