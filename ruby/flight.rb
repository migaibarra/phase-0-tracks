## Ex 6.5 Release 2 Code: Learning about modules
#  Coded by Miguel A. Ibarra, Jr.

module Flight
	def take_off(altitude)
		puts "Taking off and ascending until reaching #{altitude} ..."
	end
end

class Bird
	include Flight
end

class Plane
	include Flight
end

# Driver Code

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)