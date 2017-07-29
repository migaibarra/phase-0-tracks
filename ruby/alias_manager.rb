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
	flag = false #R2 Setting a flag for the while loop which helps store variables
	#R1: Running a loop as a user interface
	names.push(input) #R2 Pushing the name into the name array
	while flag == false #R2 This time running a while loop
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
		else #R1
			scrambled_prompt(scrambled_name, names, aliases) #R1 Reinsert the name into the prompt
		end #R1
		flag = true #R2 Setting the flag to true to stop the while loop
		# p spies
		# return spies #R2
	end #R1
	# p spies
	return {names => aliases} #R2 Returning the data as a hash
end

#R2 Setting up variables for the names and the aliases
names = [] #R2 Empty names array
aliases = [] #R2 Empty aliases array


spies = scrambled_prompt(swapped_name, names, aliases) #R2 running the program in such a way to assign the returned hash to a variable called spies

#R2 Running the each iterative method to attempt to show the data, see the note for Release 2 below:
spies.each{|key,value| puts " The Name Array: \n #{key} \n Corresponds to the Alias Array: \n #{value} \n on an index to index basis"} #R2

## Release 1: User Interface Part
#  Changes to the above code are denoted by '#R1' to show how the above code
#  Was changed to obtain user input as described by Ex 5.5 Release 1

## Release 2: Storing the Aliases
#  CHanges to the above code are denoded by '#R2' to show how the above code
#  was changed to store the aliases

## NOTE FOR RELEASE 2: The final hash variable named spies is not set up elegantly,
#  The hash has only one key and only one value, however the key is composed of
#  an array of input name strings and the value is an array of output scrambled names.
#  This means that while the spies has has the each method run on the hash variable
#  the each method acts on only ONE key and ONE value that contains an array of
#  arbitrary size. More coding, or a different approach to the scrambled prompt
#  would be necessary to split the array of strings into various keys; however,
#  the implementation does demonstrate that the data is passed through the program
#  and output can be put into a new variable.  