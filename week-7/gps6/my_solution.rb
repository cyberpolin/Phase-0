# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# In  : state_data hash
# Out : a report showing the predicted deaths and rate of spread for each state
# =============
# Pseudo Code Here!
# =============

# hashkey = VirusPredictor.new("hashkey", STATE_DATA["hashkey"][:population_density], STATE_DATA["hashkey"][:population])
# hashkey.virus_effects


#DEFINE a method that accepts a hash as an argument

# iterate thru the hash using each method
# instanciate virus predictor using the hash key as the argument
# call the virus effect method on our new class instance object

def full_country_report(hash)

  hash.each do |key, value|
    new_state = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population])
    new_state.virus_effects
  end

end

# EXPLANATION OF require_relative
# Require_relative is a command that load an external file by its relative path
# The main difference between the both of them is that require load the external file by an absolute path

require_relative 'state_data'

class VirusPredictor
  # Takes in arguments and assing them to instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # It calls two other methods, predicted_deaths and spred_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private # From now on every method in this class are private.  Private methods are only
    #available within the class.

  # Create a conditional tree to filter the deaths based on poulation density to finally print it out to screen.
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
    when  @population_density >= 200 then number_of_deaths = (@population * 0.4).floor
    when @population_density >= 150 then number_of_deaths = (@population * 0.3).floor
    when  @population_density >= 100 then number_of_deaths = (@population * 0.2).floor
    when  @population_density >= 50 then number_of_deaths = (@population * 0.1).floor
    else number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Creates a conditional tree to filter de speed of spread based on population density and finally print it on screen.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    case @population_density
    when @population_density >= 200 then speed += 0.5
    when @population_density >= 150 then speed += 1
    when @population_density >= 100 then speed += 1.5
    when @population_density >= 50 then speed += 2
    else speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

# # REFLECTION
# What are the differences between the two different hash syntaxes shown in the state_data file?
# => one uses string as key and the other use symbols :)

# What does require_relative do? How is it different from require?
# => require_relative load files from a relative path, and require do it using an absolute path.

# What are some ways to iterate through a hash?
# => you can use each, map, and almost every enumerable method

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# => there was no need to pass them as arguments because they are instance methods!

# What concept did you most solidify in this challenge?
# => The use of instance variables and the when conditional

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

full_country_report(STATE_DATA)


#=======================================================================
# Reflection Section