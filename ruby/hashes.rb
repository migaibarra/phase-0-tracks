## Coding for Interior Designer's Client Info
#  Code by Miguel A. Ibarra, Jr.

# Defining some methods to prompt the user is inputting the data
# Note each prompt is specific to the type of data the user is inputting

## Gnarly re code to check if a string is numberic or not used inside the prompt messages
# def numeric?
# 	match(/\A[+-]?\d+?(_?\d+)*(\.\d+e?\d*)?\Z/) == nil ? false : true
# end

# Prompting for name:
def get_name
	puts "Name:"
	name = gets.chomp
end

# Prompting for Age:
def get_age
	# Unfortunately we need to define the numeric? method to find numeric characters only
	def numeric?
		match(/\A[+-]?\d+?(_?\d+)*(\.\d+e?\d*)?\Z/) == nil ? false : true
	end
	puts "Age:"
	age = gets.chomp
	# Bit of code to check if the input is numeric
	if age.numeric? == false
		puts "Sorry that is not a number..."
		get_age # If the user does not input numeric characters, the functionis called again the same prompt
	else
		return age.to_i
	end
end

# Prompting for Number of Children:
def get_kids
	# Unfortunately we need to define the numeric? method to find numeric characters only
	def numeric?
		match(/\A[+-]?\d+?(_?\d+)*(\.\d+e?\d*)?\Z/) == nil ? false : true
	end
	puts "How many children does the client have?"
	num_of_kids = gets.chomp
	# Bit of code to check if the input is numeric
	if num_of_kids.numeric? == false
		puts "Sorry that is not a number..."
		get_kids # If the user does not input numeric characters, the functionis called again the same prompt
	else
		return num_of_kids.to_i
	end
end

# Prompting for Theme:
def get_theme
	puts "Theme:"
	theme = gets.chomp
end

# Prompting for Favorite Color:
def get_color
	puts "Client's favorite color:"
	color = gets.chomp
end

# Prompting for the client's pickyness
def get_pickyness
	puts "Is the client very picky?"
	picky = gets.chomp.upcase
	# This logic takes very specific input from the user
	if picky == "YES"
		return true
	elsif picky == "NO"
		return false
	elsif picky == "N/A"
		return nil
	else
		puts 'Please type "yes", "no", or "N/A"...'
		get_pickyness
	end
end

# Client Info input:

client = {
	name: get_name,
	age: get_age,
	num_of_kids: get_kids,
	theme: get_theme,
	fav_color: get_color,
	picky: get_pickyness
}

puts "This is the data that was filled in:"

client.each do |k,v|
  puts "#{k}: #{v}"
end

puts 'Do you need to update or correct anything, or type "none"?'
response = gets.chomp.upcase

while response != "NONE"
	puts "Which key do you need to update?"
	key = gets.chomp
	puts "What is the new value?"
	value = gets.chomp
	client.map!{|:key, value| [key, "%#{value}%"]}
	puts  'Do you need to update anything else, or type "none"'
	response = gets.chomp
end