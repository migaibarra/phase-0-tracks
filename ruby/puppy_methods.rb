## This is the work done by Anson Leung navigating with Miguel A. Ibarra, Jr.

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

	def speak(int)
		int.times do |i|
			puts "Woof!"
		end
	end

	def roll_over()
		puts "*rolls over*"
	end

	def dog_years(int)
		 return int * 7
	end

	def jump(int)
		puts "*jumps*" * int
	end

	def initialize()
		puts "Initializing new puppy instance ..."
	end

end

class Cat
	def initialize()
		puts "I'm a new cat!"
	end

	def meow(int)
		puts "Meow!" * int
	end

	def scratch(int)
		puts "*scratch*" * int
	end

end

# Driver code:
fido = Puppy.new

# fido.fetch("stick")
# fido.speak(3)
# fido.roll_over
# puts fido.dog_years(5)
# fido.jump(3)

kitty = []
i = 1
loop do
	kitty.push(Cat.new)
	puts "#{i}"
	i += 1
	break if i == 51
end

kitty.each do |cat|
	cat.meow(3)
	cat.scratch(2)
end

puts kitty
