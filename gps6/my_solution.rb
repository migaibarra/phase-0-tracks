# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require './state_data.rb'

class VirusPredictor

def self.generate_report(states)
  states.each do |key, value|
    new(key, value[:population_density], value[:population]).virus_effects
  end
end

#Stantiate instance variables for class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#Run predicted_deaths and speed_of_soread methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private

#Identify how many deaths will occur from this virus based on the population density of each state
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    elsif @population_density >= 50 && @population_density < 200
      number_of_deaths = ((( @population_density / 50 ) / 10 ) * @population).floor 
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Determine tha pace with which the virus will spread based on the population density of each state
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    if @population_density >= 200
      speed += 0.5
      elsif @population_density >= 50 && @population_density < 200
      speed = 2.5 - (0.5)*(@population_density.to_i / 50.to_i).to_f
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#Driver Code for running all 50 states at once (Remove generate_report Class method to run)
# STATE_DATA.each do |key, value|
#   VirusPredictor.new(key, value[:population_density], value[:population]).virus_effects
# end

VirusPredictor.generate_report(STATE_DATA)



#=======================================================================
# Reflection Section

# The two different hash syntaxes in the state_data file is the "rocket hash" (=>)
# syntax and the JSON hash (:) syntax methods. JSON hash converts the key to
# a keyword automatically making it somewhat useful for generic keywords,
# althought the older way of designating hash keys with rocket hashes can be 
# rather helpful

# The require_relative accepts another ruby file that is relative to the file
# that you are working in. This is complement to the require method which is 
# a stricter method that works for other file extensions

# You can iterate though a hash by using built in hash methods like .each and .map
# which actually go through the hash and runs the block of code that is intended
# to be performed

# The virus_effects hash had passed instance variables which are already
# accessible to any instance method within the class. In other words, it was DRY
# as it is not necessary to pass these variables in the method

# I think it really helped refactoring the virus_effects method because it helped
# me understand that instance variables are accessible throughout the class
# something that I still have a hard time grasping.