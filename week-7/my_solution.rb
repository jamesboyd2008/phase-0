#Menuka Samaranayake

# Virus Predictor

# I worked on this challenge [with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative:

# Takes in a file of that same name and loads it.

# require_relative looks for the file in your current directory.

# require_relative allows us to use a file that is the same relative
# position (current directory) as our program. require needs the exact path or directory.

require_relative 'state_data'

# class VirusPredictor

#   # This method will initialize the instance variables in a new VirusPredictor object with values from the state_data hashy hash.
#   # possibly refactor to take just one argument
#   def initialize(state_of_origin, population_density, population)
#     @state = state_of_origin
#     @population = population
#     @population_density = population_density
#   end

#   # This method calls two private methods
#   def virus_effects
#     predicted_deaths(@population_density, @population, @state) # remove args
#     speed_of_spread(@population_density, @state)
#   end

#   private

#   # This method will calculate the number of deaths and outputs it to the console in a string.
#   # refactor: remove arguments
#   def predicted_deaths(population_density, population, state)
#     # predicted deaths is solely based on population density
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end

#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

#   end

#   # This method calculates the speed of how the virus will spread and outputs in a string.
#   # remove arguments
#   def speed_of_spread(population_density, state) #in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end

# end

class VirusPredictor

  # This method will initialize the instance variables in a new VirusPredictor
  # object with values from the state_data hashy hash.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population_density = population_density
    @population = population
  end

  # This method calls two private methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # This method will calculate the number of deaths and outputs it to the
  # console in a string.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      factor = 0.4
    elsif @population_density >= 150
      factor = 0.3
    elsif @population_density >= 100
      factor = 0.2
    elsif @population_density >= 50
      factor = 0.1
    else
      factor = 0.05
    end

    print "#{@state} will lose #{(@population * factor).floor} people in this outbreak"

  end

  # This method calculates the speed of how the virus will spread and outputs in a string.
  def speed_of_spread #in months
    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE

# loop through STATE_DATA and print virus predictions for each state.
STATE_DATA.each do |state, info|
  current_state = VirusPredictor.new(state,
    STATE_DATA[state][:population_density],
    STATE_DATA[state][:population])
  current_state.virus_effects
end


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# One has string objects as keys, and points to the values with "=>".  The other
# has symbols for keys.  You can define hash elements with symbols for keys
# like this :symbol => [value]  , but doing it like this symbol: [value] is less verbose.

# What does require_relative do? How is it different from require?
# require_relative loads a file into the program, much like require.  When using
# "require", you must type out the absolute file path, that is, the whole thing.
# "require_relative" just looks for the .rb file in the current directory.  It's
# simpler and involves less typing.

# What are some ways to iterate through a hash?
# You can use enumerable methods, like ".each", or Hash#each_key, Hash#each_pair,
# and Hash#each_value.  You can also use normal loops like "while" and "for".

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# Some of them were excessive.  They didn't get used in their own methods.

# What concept did you most solidify in this challenge?
# We learned about the keyword "private".  We also had a refresher on the scope of
# variables.  Our driver code was tricky.
