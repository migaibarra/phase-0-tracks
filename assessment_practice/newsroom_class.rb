# This code

class Newsroom
	
	attr_reader :name, :overhead_budget
	attr_accessor :budget, :reporter

	def initialize(name, budget)
		@name = name
		@budget = budget.to_i
		@reporter = Hash.new
	end

	def add_reporter(identifier, value)
		@reporter.store(identifier, value)
	end

	def salary_for(reporter_name)
		salary = reporter_name.length * 10000
	end

	def total_salaries()
		employees = @reporter.keys
		salaries = employees.each { |employee| salary_for(employee) }
		@ = salaries.inject(0, :+)
	end
end

## Driver code

mag = Newsroom.new("Vox", 3000000)
mag.add_reporter("Dan Rather", ["typing", "investigating", "drinking coffee"])
mag.add_reporter("Katie Couric", ["investigating", "typing", "reporting"])
mag.add_reporter("Marvin Zindler", ["talking loud", "investigating restaurants"])

p mag.reporter

# p mag.salary_for(mag.reporter["Dan Rather"])

# mag.reporter.each {|key, value| puts "#{key} has #{value} skills"}

p mag.salary_for("Anderson Cooper")

p mag.overhead_budget