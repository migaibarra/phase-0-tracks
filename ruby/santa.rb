## Santa Simulator for Ex. 6.3
#  Coded by Miguel A. Ibarra, Jr.

class Santa

	# Initializing with a message anytime an instance of a Santa class is created
	def initialize(name, gender, ethnicity)
		puts "Initializing Santa instance..."
		@name = name # Adding a name varialbe to our Santa
		@gender = gender
		@ethnicity = ethnicity
		if gender == "male" || gender == "bigender" # Code to add a beard attribute if the santa is male or bigender
			beard = true
		else
			beard = false
		end
		puts name
		puts "Does this santa have a beard? #{beard}"
	end

	reindeer_ranking = ["Rudolph","Dasher","Dancer","Prancer","Vixen",
						"Comet", "Cupid","Donner", "Blitzen"]

	age = 0
	
	# Defining a speak method that will have a Santa say a message
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	# A cookie method that also prints a message depending on the type of cookie
	def eat_milk_and_cookie(cookie_type)
		puts "That was a good #{cookie_type}!"
	end
end

# Driver Code

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# Checking some of the instantiations of the code
# santas.each{|santa|
# 	# puts gender
# 	# puts reindeer_ranking
# 	santa.eat_milk_and_cookie("Chocolate Chip Cookie")
# }

santas = []
example_names = ["Dillian", "Sarah", "Kris", "Michael", "Michaela", "Sasha", "Candy"]
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_names[i], example_genders[i], example_ethnicities[i])
end
