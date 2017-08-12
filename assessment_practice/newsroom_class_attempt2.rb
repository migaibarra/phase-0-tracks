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
		@reporters.store(reporter, reporter_hash)
	end

	# Release 3: Determining salaries
	def salary_for(reporter)
		return reporter.length * 10000
	end

	# Release 4: Finding out total salaries
	def total_salaries
		# What to determine the total salaries as we add any new reporters
		# First get the keys for the reporters
		reporters = @reporters.keys
		salaries = reporters.map {|reporter| salary_for(reporter)}
		salaries.each {|salary| @overhead+=salary}
	end
end

## DRIVER CODE ##

the_news = Newsroom.new("CNN", 300000)

# p the_news.name

# p the_news.budget


# # Release 2: Adding reporters
the_news.add_reporters("Wolf Blitzer", ["investigating", "interviewing", "drinking coffee"])
the_news.add_reporters("Anderson Cooper", ["reporting", "investigating", "not aging"])
the_news.add_reporters("Rebecca Berg", ["talking politics", "polling"])

# the_news.reporters.each{ |key, value| puts "#{key} can do the following: #{value.values.flatten.join(", ")}"}

# Release 3: Determining the reporters' salaries

# p the_news.salary_for("Anderson Cooper")

# Release 4: Determining a newsroom total overhead

p the_news.overhead
the_news.total_salaries
p the_news.overhead