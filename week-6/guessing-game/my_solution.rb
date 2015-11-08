# Build a simple guessing game


# I worked on this challenge by myself.
# I spent 1 hours on this challenge.

# Pseudocode

# Input: integer (it is called guess)
# Output: whether you solved the problem or not.
# Steps:
# Takes an integer from user as an input.
# Random should be shuffle between the ranges of 0-99 (you can tell the range of this number to user if you want)
# Compare the integer from the available randomized number from the game.
# If the integer is smaller than random number, then return low.
# If the integer is larger than random number, then return high.
# If the integer is equal to the random number, then return correct.
# Returns true if the last guess was correct and false otherwise.


# Initial Solution
class GuessingGame
  def initialize(answer)
    @guess = answer
    @guessed = false
  end
  # @number_to_guess = (0..99).begin + rand((0..99).size)
  def guess(integer)
    if integer == @guess
      @guessed = true
      :correct
    elsif integer > @guess
      @guessed = false
      :high
    else
      @guessed = false
      :low
    end
  end

  def solved?
    @guessed
  end
end

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @guess = answer
    @guessed = false
  end

  def guess(integer)
    if integer == @guess
      @guessed = true
      :correct
    elsif integer > @guess
      @guessed = false
      :high
    else
      @guessed = false
      :low
    end
  end

  def solved?
    @guessed
  end
end

game = GuessingGame.new(10)
game.solved?   # => false

game.guess(5)  # => :low
game.guess(20) # => :high
game.solved?   # => false

game.guess(10) # => :correct
game.solved?   # => true

# Reflection

=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
  Objects are the key to understand object-oriented technology. If you look around, you will see a lot of examples of real-world objects such as your dog, or your bike etc. Real-world objects hare two characteristics: state and behavior.Dog has state (name, color, hungry) and behavior (barking). Bike also have state (currect pedal, current gear) and behavior (changing gear). Identifying state and behavior for real-worl objects is great way to begin thinking about objects in programming. Software objects are conceptually similar to real-world objects; they also consists of state and behavior. An object stores its state in fields called instance variables and exposes its behavior through methods (functions). Methods operate on an object's state and serve as the primary mechanism for object-to-object communication or functions.


When should you use instance variables? What do they do for you?
  Instance variables is bound to the specific instance of the class. An instance variable makes itself available to every method of the object by binding itself to the entire object. Whenever you have class, instance variables are bound to an instance of a class, what we call it, state of an object. When you want to define the state of an object and use it anywhere within the class, we use instance variables.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
  When you have condition, you capture the code within control flow and you want ode to do specific operation or action if the condition meeets or doesn't; so if and else transfers the normal execution of the program and transfers the flow control to the condition code body that where you either want it to do some other operation or stop the program. By this, control flows to the if and else clauses. I didn't have much trouble with the flow control but it is very easy to get trapped and lose your direction within it.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
Symbols brings great advatages of faster processing time and it is also very easy to implement for the keys in hashes.

=end
