## Poorman's Hangman Game
#  Coded by Miguel A. Ibarra Jr.

class HangMan
  # Setters and Getter for this game:
  attr_reader :guess_count, :is_correct, :prompt
  attr_accessor :guess
	
  # Initialization of Hangman Game
  def initialize(word)
    # This is just some a printout of the game at initialization
    puts "
     POORMAN's
     ___   ___  ____  ____   __   ____    ___      ___   _____   ____   __
    /  /  /  / / _  | |   \\ | |  / ___\\  |   \\    /   | |  _  \\  \\   \\_ \\ \ 
   /  /__/  / / /_| | | |\\ \\| | | |  ___ | |\\ \\  / /| | | |_\\  \\  \\    \\ \\ \\
  /  ___   / /  ___ | | | \\   | | |__| | | | \\ \\/ / | | |  ___  \\  \\ \\\\ \\_\\ \\ 
 /__/  /__/ /__/  |_| |_|  \\__|  \\____/  |_|  \\__/  |_| |_|   \\__\\ |_| \_____|
   
    "

    # instance variables for HangMan Class
    @word = word

    ## LOGIC: This is to set the number of guesses based on the length of the word
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
    ## End of Logic

    @is_correct = false # Flag to see if the guess is correct
    # Nifty code to set a prompt variable with a bunch if underscores
    # Note the length of the underscores matches the length of the word
    @prompt = String.new(str="_") * word.length
    @guess_history = Array.new # A guess history array to store guesses
  end

  # Method to check a character
  def guess_char=(char)
    # First want to check if a character is in the word and has not been guessed
    # beforhand
    if @word.include?(char) && !@guess_history.include?(char)
      # defining an array of indices of the word string that tells us the
      # position of where the character matches the character of the word
      char_index = (0 ... @word.length).find_all { |i| @word[i,1] == char}
      # loop through the character index array to redefine the prompt with the 
      # correctly guessed character
      char_index.each{|elment| @prompt[elment] = char}
      @guess_history << char # Store the guess in the guess history
      @is_correct = false # the guess is not correct because the user hasn't
                          # guessed the whole word
      @guess_count -= 1 # loose an attempt to guess the word

    # next we want to check if the guess has been guessed before
    elsif @guess_history.include?(char)
      @is_correct = false # guess is not correct because the user hasn't guessed
                          # the whole word
      # note the counter will not be increased if it matches guess history
    # For all other incorrect guesses do the following:
    else
      @guess_history << char # store char in the guess history
      @is_correct = false # the guess is incorrect
      @guess_count -= 1 # loose an attempt to guess the word
    end
  end

  # Now defining a method for the user to guess the word
  def guess_word=(guess)
    
    # First is the case that the user guesses correctly
    if @word == guess
      @is_correct = true # flag to see if the user guessed correctly is set true
      @guess_count = 0 # Automatically set the guess count to zero
    
    # Now want to know if the guess word guess is included in the guess history
    elsif @guess_history.include?(guess)
      @is_correct = false # flag set to false but no loss in attempt

    # Finally if the guess is not correct
    else
      @guess_history << guess # Store the guess in the guess history
      @is_correct = false # flag is still showing the guess incorrect
      @guess_count -= 1 # loose an attept at guessing
    end
  end
end

# user interface

puts "Player 1 what word do you want Player 2 to guess?"
stay_of_execution = gets.chomp.downcase # obtain a word and make characters downcase

puts "Player 2, you are now entering the gallows, may Zeus be with you... \n"
game = HangMan.new(stay_of_execution) # call the HangMan class to start the game

# A bunch of verbiage to queue the user
puts "Player 2, the hangman will set you free if you can guess this secret word."
puts "You have #{game.guess_count} guesses to guess a letter or the entire word. Let's do this... \n"

## This while loop steps through the game guess by guess:
while game.guess_count != 0
  puts "This is what you have guessed so far:"
  puts "#{game.prompt}"
  # A bit of code for the last guess
  if game.guess_count == 1
    puts "This is your last chance, do you know the word, or any last words?"
    guess = gets.chomp.downcase
    game.guess_word = guess
  else
    puts "You have #{game.guess_count} guesses left, guess a letter or the word."
    guess = gets.chomp.downcase
    # A bit of code to determine if the player guessed a word or a character
    if guess.length == 1 # if the sting's length is 1 then we know it's a character
      game.guess_char = guess # run the guess as a character guess
    else
      game.guess_word = guess # run it as a guess of the word
    end
  end
end

# Output a response depending on if the player guessed correctly
if game.is_correct == true
  puts "You cheated the hangman! Good Job!"
else
  puts "Looks like you'll be hanging around for a long time... HAHAHAH... GAME OVER!"
end

