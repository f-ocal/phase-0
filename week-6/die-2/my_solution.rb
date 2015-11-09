# Die Class 2: Arbitrary Symbols
#
#
# I worked on this challenge by myself.
# I spent 1 hours on this challenge.
#
# Pseudocode
#
# Input: An array of strings
# Output: One of the strings randomly.
# Steps:
# Takes input of an array of strings.
# Define a method that returns the number of sides
# Define a method that randomly shuffles the string and returns one of strings as output.

# Initial Solution
class Die
  def initialize(labels)
    @labels = labels
    @sides = @labels.size
    raise ArgumentError.new('The number should be positive') if labels.empty?
  end

  def sides
    @sides
  end

  def roll
     @labels.shuffle.first
    # (0...5).map {@labels[rand((0...5))]}[rand(1...@sides)]
  end
end
die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
p die.sides
p die.roll

# Refactored Solution

class Die

  attr_reader :sides

  def initialize(labels)
    @labels = labels
    raise ArgumentError.new('The number should be positive') if @labels.empty?
  end
  def sides
    @labels.length
  end
  def roll
    @labels.sample
  end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
p die.sides
p die.roll

# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
  I didn't need to change much things. Overall it was similar.

What does this exercise teach you about making code that is easily changeable or modifiable?
  I learned about methods of sample and shuffle which make to choose randomly.

What new methods did you learn when working on this challenge, if any?
  As above, I learned rand, sample and shuffle/

What concepts about classes were you able to solidify in this challenge?
  I was able to solidy about choosing random element through available methods such as shuffle, rand, sample. I am curious if anyone has done something differently on this question.
=end
