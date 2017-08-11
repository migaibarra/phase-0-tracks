## This exercise is for practice for the Phase 0 assessment
#  Coded by Miguel A. Ibarra, Jr.

# Release 1: Creating a Newsroom Class

class Newsroom

	attr_reader :name
	attr_accessor :budget

	def initialize(name, budget)
		@name = name
		@budget = budget
	end
end

## DRIVER CODE ##

the_news = Newsroom.new("CNN", 300000)

p the_news.name

p the_news.budget



