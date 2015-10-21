# MY SOLUTION FILE

# require_relative 'state_data'

class VirusPredictor
  #initialize method - takes arguement state_of_origin(string), population_density(int), population (int)
  #declaring instance variables for state, population, and population density
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #define method virus_effects
  #passes instance variables- state, population, and population_density through method predicted_deaths & speed_of_spread
  def virus_effects
#     predicted_deaths
#     speed_of_spread
    puts "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  private
  #define predicted_deaths method - which takes the arguements - population_density(int), population(int), and state(string)
  #if pop_den is greater than or equal to 200 - number of deaths will be equal to population times .4 rounded down
  #prints state will lose number_of_deaths this outbreak
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      (@population * 0.4).floor
    elsif @population_density >= 150
      (@population * 0.3).floor
    elsif @population_density >= 100
      (@population * 0.2).floor
    elsif @population_density >= 50
      (@population * 0.1).floor
    else
      (@population * 0.05).floor
    end

#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  #define method speed of spread - takes arguement pop_den(int) & state(string)
  #declare variable speed and set = to 0.0(float)
  #if pop_den is >= 200 increment speed .5
  #print will spread across state in speed months
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
   # speed = 0.0

    if @population_density >= 200
      0.5
    elsif @population_density >= 150
      1
    elsif @population_density >= 100
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end

#     puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state

#iterate through state_data |key,value|
#set arbitrary value state to VirusPredictor.new(key, value[:population_density], value[:population]).virus_effects
STATE_DATA.each do |key,value|
  VirusPredictor.new(key, value[:population_density], value[:population]).virus_effects
end
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
#The difference between hash syntax is that string key uses arrow notation and the sub-hash uses symbols.
# What does require_relative do? How is it different from require?
#require_relative linked my_solution to state_data (within same relative path) require does the same thing, but requires the path
# What are some ways to iterate through a hash?
#I used a each with key, value to iterate through the hash.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
#Nothing initially, but found out that you can remove the arguments all together.
# What concept did you most solidify in this challenge?
#My refactoring was really solified this challenge. I feel like - learning to find those little redundancies and DRY ing the code out is vital.