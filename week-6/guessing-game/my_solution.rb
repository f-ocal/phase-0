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

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# When should you use instance variables? What do they do for you?
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
