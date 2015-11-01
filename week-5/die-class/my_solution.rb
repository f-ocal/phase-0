# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:
# With an argument i, it returns a random integer n such that 0 <= n < i. Thus rand(6) produces an integer in the range of (0..5). Adding 1 gives a number between 1 and 6.7u

# 1. Initial Solution
class Die
  def initialize(sides)
    raise ArgumentError.new("The number should be positive.") if (sides < 1)
    @sides = sides
  end
  def sides
    @sides
  end
  def roll
    rand(1..@sides)
  end
end
# d = Die.new(6) - Creating a new object, called 'd' in a class of Die. This means d is the instance of 'Die class'
# d.sides - calling method 'sides' on the new object, d, every code within the sides function will run.
# d.roll

# 3. Refactored Solution
# I can't recall any refactored solution on it.






# 4. Reflection
# What is an ArgumentError and why would you use one?

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# I used side and roll methods.
# What is a Ruby class?
# Class is a blueprint for an object.

# Why would you use a Ruby class?
# => Class is like a blueprint of a project, which holds the methods and behaviours in it. You can define multiple methods within a class.

# What is the difference between a local variable and an instance variable?

# Where can an instance variable be used?
# => instance variable can be used within the class.
