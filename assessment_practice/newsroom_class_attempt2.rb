## This exercise is for practice for the Phase 0 assessment
#  Coded by Miguel A. Ibarra, Jr.

# Release 1: Creating a Newsroom Class

class Newsroom

	attr_reader :name, :reporters, :overhead
	attr_accessor :budget

	def initialize(name, budget)
		@name = name
		@budget = budget
		@reporters = Hash.new
		@overhead = 0
	end

	# Release 2: Adding Reporters
	def add_reporters(reporter, skills)
		reporter_hash = {"Skills": skills}
		self.total_salaries
		# @reporters.store(reporter, reporter_hash)
		# @reporters.total_salaries
		if self.has_budget?(reporter)
			@reporters.store(reporter, reporter_hash)
		else
			return "Sorry, there is not enough budget to hire #{reporter}"
		end
		# def has_budget?
		# 	if @overhead + salary_for(reporter) > @budget
		# 		puts "Sorry, there is not enough in the budget to have #{reporter} on the payroll"
		# 	else
		# 		@reporters.store(reporter, reporter_hash)
		# 		self.total_salaries
		# 	end
		# end
		# has_budget?
	end

	# Release 3: Determining salaries
	def salary_for(reporter)
		return reporter.length * 10000
	end

	# Release 4: Finding out total salaries
	def total_salaries
		# What to determine the total salaries as we add any new reporters
		# First get the keys for the reporters
		salaries = @reporters.keys.map {|reporter| salary_for(reporter)}
		salaries.each {|salary| @overhead+=salary}
	end

	# Release 5: Finding out if we have enough budget for reporters
	def has_budget?(reporter)
		if @overhead + salary_for(reporter) <= @budget 
			return true
		else
			return false
		end
	end

end

## DRIVER CODE ##

the_news = Newsroom.new("CNN", 300000)

# p the_news.name

# p the_news.budget


# # Release 2: Adding reporters
# the_news.add_reporters("Wolf Blitzer", ["investigating", "interviewing", "drinking coffee"])
the_news.add_reporters("Anderson Cooper", ["reporting", "investigating", "not aging"])
the_news.add_reporters("Rebecca Berg", ["talking politics", "polling"])

p the_news.reporters

# the_news.reporters.each{ |key, value| puts "#{key} can do the following: #{value.values.flatten.join(", ")}"}

# Release 3: Determining the reporters' salaries

# p the_news.salary_for("Anderson Cooper")

# # Release 4: Determining a newsroom total overhead

# p the_news.overhead
# the_news.total_salaries
# p the_news.overhead

# Release 5: Testing code to avoid us going overbudget

p the_news.add_reporters("Marvin Zindler", ["finding slime in the ice-machine"])

# Release 7: 
puts "Welcome to the #{the_news.name} Newsroom!\n \n"
puts "Your reporting team is:"
the_news.reporters.each{ |key, value| 
	puts "- #{key}, specializing in #{value.values.flatten.join(", ")}."
}
puts "Thank you for watching! Good night!"