# Virus Predictor

# I worked on this challenge with Adell.
# We spent 2.5 hours on this challenge.

# EXPLANATION OF require_relative
# Linking with another file called state_data. State_data file has input information that is required for this code.
require_relative 'state_data'

class VirusPredictor

def initialize(state_of_origin, population_density, population)
@state = state_of_origin
@population = population
@population_density = population_density
end

def virus_effects
predicted_deaths(@population_density, @population, @state)
speed_of_spread(@population_density, @state)
end

private
# Calculate death toll based on the population_density.
def predicted_deaths(population_density, population, state)
# predicted deaths is solely based on population density
if @population_density >= 200
number_of_deaths = (@population * 0.4).floor
elsif @population_density >= 150
number_of_deaths = (@population * 0.3).floor
elsif @population_density >= 100
number_of_deaths = (@population * 0.2).floor
elsif @population_density >= 50
number_of_deaths = (@population * 0.1).floor
else
number_of_deaths = (@population * 0.05).floor
end
print "#{@state} will lose #{number_of_deaths} people in this outbreak"

end
#Calculates how long until it is infected based on it's population density.
def speed_of_spread(population_density, population)
# We are still perfecting our formula here. The speed is also affected
# by additional factors we haven't added into this functionality.
speed = 0.0
if @population_density >= 200
speed += 0.5 # speed = speed + 0.5
elsif @population_density >= 150
speed += 1
elsif @population_density >= 100
speed += 1.5
elsif @population_density >= 50
speed += 2
else
speed += 2.5
end
p " and will spread across the state in #{speed} months."
end
end

#=======================================================================

# DRIVER CODE

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================

#REFACTORED Solution
# Provide summary of every state's population, population_density and their virus effects.
# Took both if..else conditions from predicted_deaths and speed_of_spread methods, and explictly define another separate method called population_density.
# When you call virus effects, you will call private predicted_deaths and speed_of_spread methods, they will call population_density method.
# Refactor if and else with case statement. Take note `when` doesn't take any greater > or < = signs, it takes range information.
# There is no neccessary for initialize method and instance variables because I am initializing instance variables within state_summary method.

class VirusPredictor
  # Instantiate some of the instance variables, containing STATE_DATA values and taking 3 parameters.
  # Calls two private methods: predicted_deaths and speed_of_spread.
  def state_summary
    STATE_DATA.each do |state, state_data| #state_data => {population_density: 94.65, population: 4822023}
      # Initializing instance variables here otherwise, case statement(It is the section of if .. else at the initial solution) doesn't know them about.
      @population_density = state_data[:population_density]
      @population = state_data[:population]
      @state = state
      puts state #priting out state name
      puts "The population density is #{state_data[:population_density]}" #state's population density
      puts "The population is #{@population}"
      puts '!!!!!!!Predicted Deaths!!!!!!!!'
      # p predicted_deaths(state_data[:population_density], state_data[:population], state)
      virus_effects
      puts ''
    end

  end

  def virus_effects
    population_density
    predicted_deaths
    speed_of_spread
  end

  private

  def population_density
    case @population_density
    when (200...Float::INFINITY)
      @number_of_deaths = (@population * 0.4).floor
      @speed = 0.5
    when (150...200)
      @number_of_deaths = (@population * 0.3).floor
      @speed = 1
    when (100...150)
      @number_of_deaths = (@population * 0.2).floor
      @speed = 1.5
    when (50...100)
      @number_of_deaths = (@population * 0.1).floor
      @speed =2
    when (0...50)
      @number_of_deaths = (@population * 0.05).floor
      @speed =2.5
    end
  end

  def predicted_deaths
    print "#{@state} will lose #{@number_of_deaths} people in this outbreak"
  end

  def speed_of_spread
    puts " and will spread across the state in #{@speed} months.\n\n"
  end

end
state_info = VirusPredictor.new
state_info.state_summary

=begin
Reflection
What are the differences between the two different hash syntaxes shown in the state_data file?
  The different hash syntaxes are => and :. The sign `=>`
What does require_relative do? How is it different from require?
  require_relative links another file called state_data. State_data file has input information that is required for this code.

What are some ways to iterate through a hash?
You can use each to iterate through hash. We can also use map method, too.

When refactoring virus_effects, what stood out to you about the variables, if anything?
  I found out that the variables are unneccessary when I refactor virus_effects, so we took out the instance variables from predicted_deaths and speed_of_spread. Because we have initialized the variables inside the state_summary.

What concept did you most solidify in this challenge?
  I think I understood the instance variables, and refactoring. We could able to pull out repeated condition into another method which gives us great refactoring.

=end
