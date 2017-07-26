## Coding for Interior Designer's Client Info
#  Code by Miguel A. Ibarra, Jr.

# def data
# 	count = 0
# 	prompts = ["Name:","Age:","Number of Children:","Decor Theme:","Favorite Color:","Picky:"]
# 	while count != prompts.length - 1
# 		puts prompts[count]
# 		gets.chomp
# 		count += 1
# 	end
# end

# Workaround way of prompting the user for client info
# Obtaining Client Info


# Just define for all of them!!!! Like so...
def get_name
	puts "Name:"
	name = gets.chomp
end


# puts "Age:"
# age = gets.chomp.to_i

# puts "Number of Children:"
# num_of_Kids = gets.chomp.to_i

# puts "Decor Theme:"
# theme = gets.chomp

# puts "Fav_Color:"
# fav_color = gets.chomp

# puts "Picky:"
# picky = gets.chomp

# # This code sets a boolean value for the Picky input
# if Picky == "yes" || Picky == "true"
# 	Picky_bool = true
# elsif Picky == "no" || Picky == "false"
# 	Picky_bool = false
# else
# 	puts "I didn't understand you, so I'll set that to false."
# 	Picky_bool = false
# end

# Client Info input:

client = {
	name: get_name,
	# Age: get_name,
	# Num_of_Kids: Num_of_Kids,
	# Theme: Theme,
	# Fav_Color: Fav_Color,
	# Picky: Fav_Color
}


# client.each_key do |key| puts "#{key}" 

# client = {
# 	Name: gets.chomp,
# 	Age: gets.chomp.to_i,
# 	Num_of_Kids: gets.chomp.to_i,
# 	Theme: gets.chomp.chomp,
# 	Fav_Color: gets.chomp.chomp,
# 	Picky: gets.chomp.chomp
# }

# client.each_key do |key|
# 	puts "#{key}"
# end

puts client