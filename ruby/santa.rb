## Santa Simulator for Ex. 6.3
#  Coded by Miguel A. Ibarra, Jr.

class Santa

	# Adding attr_reader for our getter variables
	attr_reader :ethnicity

	# Adding attr_accessor for our setter variables
	attr_accessor :age, :reindeer_ranking, :gender

	# Initializing with a message anytime an instance of a Santa class is created
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		# @name = name # Adding a name varialbe to our Santa # Commenting out name to simplify the situation
		@gender = gender
		@ethnicity = ethnicity
		if gender == "male" || gender == "bigender" # Code to add a beard attribute if the santa is male or bigender
			@beard = true
		else
			@beard = false
		end
		# puts name # Also getting rid of this reference to name
		puts "Does this santa have a beard? #{@beard}"

		# Variables not passed in on initialization
		@reindeer_ranking = ["Rudolph","Dasher","Dancer","Prancer","Vixen",
		 					"Comet", "Cupid","Donner", "Blitzen"]
		@age = rand(0...140)
	end
	
	# Defining a speak method that will have a Santa say a message
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	# A cookie method that also prints a message depending on the type of cookie
	def eat_milk_and_cookie(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	# # Adding Getter methods for my Santa Class (Release 2):
	# def age # Returning Age outside the class
	# 	@age
	# end

	# def ethnicity # Returning ethnicity outside the class
	# 	@ethnicity
	# end

	# def reindeer_ranking
	# 	@reindeer_ranking
	# end

	# def gender
	# 	@gender
	# end

	# Adding Setter methods to my Santa Class:
	def celebrate_birthday=(dummy_variable)
		@age += 1
	end

	def get_mad_at=(reindeer)
		@reindeer_ranking.push(@reindeer_ranking.select{|reindeer_names|
			reindeer_names == reindeer})
		@reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer) || @reindeer_ranking.length)
	end

	def new_gender=(gender) # Setter method to change gender
		@gender = gender
	end

end

# ## Release 2 Practice Code:

# class Reindeer
#   def initialize(name)
#     @name = name
#   end
# end

# reindeer = Reindeer.new("Blitzen")
# reindeer.name

# ## End of Release 2 Practice Code

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
# example_names = ["Dillian", "Sarah", "Kris", "Michael", "Michaela", "Sasha", "Candy"]
possible_genders = ["agender", "androgyne", "pangender", "hijra", "female", "bigender", "male", "female", "gender fluid", "N/A"]
possible_ethnicities = ["black", "White South African", "Nigerian", "Ethiopian", "Chinese", "Koean", "Mexican", "Zulu", "Vietnamese", "Thai", "Uyghur Chinese", "Italian", "Latino", "Indo-Aryan", "Punjabi", "Hindi", "Bengali", "Dravidian", "First Nation", "white", "Japanese-African", "Tibetan", "Mongolol", "Hui Chinese", "Norwegian", "Wopkaimin", "Papuan", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

puts "How many santas do you want to create?"
num_of_santas = gets.chomp.to_i

num_of_santas.times do
  santas << Santa.new(possible_genders.sample, possible_ethnicities.sample)
end


## Driver code to test some of the above variables
#  Note this only works if you input at least 98 santas

# puts santas[3].ethnicity

# santas[3].celebrate_birthday = "dummy variable"
# puts santas[3].age

# puts santas[5].age
# puts santas[98].age

# santas[0].get_mad_at = "Vixen"
# puts santas[0].reindeer_ranking

santas[0].new_gender = "cisfemale"
puts santas[0].gender