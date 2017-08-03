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
		words + "!!!" + " :("
	end

	def yelling_happily(words)
		words.upcase + "!!!" + " :)"
	end
end

## Driver code

angry_message = "WTF"

happy_message = "yayyy"

# Release 1 Calls

# p Shout.yell_angrily(angry_message)

# p Shout.yelling_happily(happy_message)

# Release 3 Calls

p angry_message.yell_angrily

p happy_message.yelling_happily