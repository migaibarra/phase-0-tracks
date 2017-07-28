## Alias Manager Program for Exercise 5.5 Solo Challenge
#  Coded by Miguel A. Ibarra, Jr.

## Creating an algorithm that scrambles the name of a person following
#  the requirements posed by Ex 5.5

## Step 1: Obtain the full name of the person:

puts "Please give your given full name:"
fullname = gets.chomp

## Step 2: Swapping the name of the person:

# This line of code takes the fullname variable, runs a split method to split
# the string into an array words based on the space (' ', note it is implied)
# then it reverse the array and joins the strings into one string with a
# space (' '):
swapped_name = fullname.split.reverse.join(' ')


## Step 3: Switching the vowels to the next vowel:

# First defining a method that will advance each vowel to the next vowel
# or every consonent to the next consonent (note can only work on lowercase letters):
def next_vowel(str)
	# Need to identify the vowels in the English alphabet in a new variable
	vowels = ["a","e","i","o","u"]
	# Need to also identify the consonants in the English alphabet in a new variable
	consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r",
		"s","t","v","w","x","y","z"]
	words = str.split # Splitting the name into words based on space (' ')
	
	## Loop into each name
	i = 0 # Setting an index to zero
	new_word = [] # Setting up an empty array for our new scrambled word
	mod_word = [] # Setting up an empty array to hold the capitalized scrambled word

	while i < words.length # Looping into each word
		chars = words[i].split('') # Split each word into characters
		new_chars = chars.map{|char| # Mapping into each character
			if vowels.include?(char) # If the character is included in the vowels variable
				vowels.rotate(1)[vowels.index(char)] # Reassign it to the next vowel
			elsif consonants.include?(char) # If the character is included in the consonants variable
				consonants.rotate(1)[consonants.index(char)] # Reassign it to the next consonet
			else
				char # Otherwise don't do anything (In case there are odd characters)
			end
		}
		new_word.push(new_chars.join) # rejoin the word
		# This bit of code capitalizes the first character of the name
		mod_word.push(new_word[i].slice(0,1).capitalize + new_word[i].slice(1..-1))
		i += 1 # increment counter
	end
	return mod_word.join(' ') # return the rejoined words
end

# Now we can take the name and scramble it:

#R1 Defining a method to Prompt the user to scramble their name
def scrambled_prompt(input, names, aliases) #R1 and R2 (including names and aliases)
	
	#R1: Running a loop as a user interface
	names.push(input) #R2 Pushing the name into the name array
	loop do #R1
	#R1
		scrambled_name = next_vowel(input.downcase) # Note making sure all letters are lowercase with .downcase method
		puts "Your new Alias is:" #R1	
		puts scrambled_name #R1
		aliases.push(scrambled_name) #R2 Pushing the aliais into the alias array
		#R1: Prompting the user to see if they want us to continue
		puts 'Please type "done" if you are done. Otherwise I will scramble your alias again' #R1
		response = gets.chomp.downcase #R1 obtaining a response
		if response == "done" #R1
			puts "Given Full Names:" #R2
			p names #R2
			puts "Scrambled Aliases:" #R2
			p aliases #R2
			spies = {names => aliases} #R2
			return spies #R2
			# break #R1 Using Break condition to get out of loop
		else #R1
			scrambled_prompt(scrambled_name, names, aliases) #R1 Reinsert the name into the prompt
		end #R1
		break #R1 Using Break conditions to get out of loop
	end #R1
end

#R2 Setting up variables for the names and the aliases
names = [] #R2 Empty names array
aliases = [] #R2 Empty aliases array

spies = scrambled_prompt(swapped_name, names, aliases)

spies.each{|key,value| puts "#{key} is actually #{value}"}

## Release 1: User Interface Part
#  Changes to the above code are denoted by '#R1' to show how the above code
#  Was changed to obtain user input as described by Ex 5.5 Release 1

## Release 2: Storing the Aliases
#  CHanges to the above code are denoded by '#R2' to show how the above code
#  was changed to store the aliases