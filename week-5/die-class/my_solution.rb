# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 2 hours on this challenge.

# 0. Pseudocode
# Input: None, but it can take the number of the sides from user.
# Output: random number produced when the die is rolled.
# Steps:
# Define sides method to return the value of a particular instance variable, in this case, @sides variable.
# Define roll methods which generates random number when the die is rolled.
# Use .rand() method; we should start with 1 till the number of sides.
# With an argument i, it returns a random integer n such that 0 <= n < i. Thus rand(6) produces an integer in the range of (0..5). Adding 1 gives a number between 1 and 6.

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
# Refactored the sides method.
class Die
  attr_reader :sides

  def initialize(sides)
    raise ArgumentError.new("The number should be positive.") if (sides < 1)
    @sides = sides
  end

  def roll
    rand(1..@sides)
  end
end


# 4. Reflection
# What is an ArgumentError and why would you use one?
# To start with definition of exception, an exception is a special kinf of exceptional conditiona; it indicates that something has gone wrong. When this occurs, an exception is raised. An exception handler is a block of code that is occurs, during execution of normal program and transferring the flow-of-control to the exception handling code - dealing with it or handling it. Ruby's predefined classes - Exception and its children, one of them is ArgumentError. It is raised when the number of arguments are wrong and there isn't a more specific exception class such as passing an argument that is not acceptable.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# I used side and roll methods. I had some challenges to understand the getter and setter methods at first, after reading about them more, it was then easy to implement. 

# What is a Ruby class?
# Class is a blueprint for an object. which holds the methods and behaviours in it. You can define multiple methods within a class. When a new class is created, an object of type Class is initialized and assigned to a global constant. When object = ClassName.new is called, a new object is created, which is the instance of this class.

# What is the difference between a local variable and an instance variable?
# Local variables are defined within a method and local variables are not available outside the method. Local variables can start with underscore or lowercase letters. Instance variables are defined within a class and they are available across methods for any particular instance or object. Local variables are limited to the scope that they were declared in; however instance variables exit as long as the object exists. An instance variable continues to exist for the life of the object that holds it. A local variable exists only within a single method, block or module body.

# Where can an instance variable be used?
# => The instance variable is bound to the specific instance of the class. By binding itself to the entire object, an instance variable makes itself available to every method of the object.

#### Self Note: We can access the contents of an instance variable through getter methods. Having to explicitly define getter methods ensures that the object is always in control of how your state is exposed to the public. All setter methods end with the = sign in their name, for instance def sides= end is a setter method, which allows us to change the value of the instance variable from outside.
