## Exercise 6.5: Working with Modules
#  Coded by Miguel A. Ibarra, Jr.

module Shout
	# Release 1 Version of our Shout Module
	# # we'll put some methods here soon, but this code is fine for now!
	# def self.yell_angrily(words)
	# 	words + "!!!" + " :("
	# end

	# def self.yelling_happily(words)
	# 	words.upcase + "!!!" + " :)"
	# end

	# Release 3 Version using Mixins
	def yell_angrily(words)
		words + "!!!" + " ..."
	end

	def yelling_happily(words)
		words.upcase + "!!!" + " :)"
	end
end

## Driver code

# Release 1 Calls

# angry_message = "WTF"

# happy_message = "yayyy"

# p Shout.yell_angrily(angry_message)

# p Shout.yelling_happily(happy_message)

# Release 3 Calls

class Donald_Trump
	include Shout
end

class Cheerleader
	include Shout
end

president = Donald_Trump.new

seahawks_cheerleader = Cheerleader.new

p president.yell_angrily("FAKE NEWS")

p seahawks_cheerleader.yelling_happily("Go SEAHAKS")