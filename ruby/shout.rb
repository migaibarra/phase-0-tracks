## Exercise 6.5: Working with Modules
#  Coded by Miguel A. Ibarra, Jr.

module Shout
	# we'll put some methods here soon, but this code is fine for now!
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words.upcase + "!!!" + " :)"
	end
end

## Driver code

angry_message = "WTF"

happy_message = "yayyy"

p Shout.yell_angrily(angry_message)

p Shout.yelling_happily(happy_message)