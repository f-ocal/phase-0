# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 1 hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: One of the string randomly.
# Steps:
# Takes input of an array of strings.
# Define a method that return the number of sides
# Define a method that randomly shuffles the string and returns one of strings as output.


# Initial Solution
class Die
  def initialize(labels)
    raise ArgumentError.new('The number should be positive') if labels.length == 0
    @labels = labels
    @sides = labels.size
  end

  def sides
    @sides
  end

  def roll
    (@labels).shuffle[0]
    # (0...5).map { ('A'..'F').to_a[rand(0)]}.join
  end
end
die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
p die.sides
p die.roll

# Refactored Solution

class Die
  def initialize(labels)
    raise ArgumentError.new('The number should be positive') if labels.length == 0
    @labels = labels
    @sides = labels.size
  end

  attr_reader :sides

  def roll
    (@labels).sample
  end
end

# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# What does this exercise teach you about making code that is easily changeable or modifiable?
# What new methods did you learn when working on this challenge, if any?
# What concepts about classes were you able to solidify in this challenge?
