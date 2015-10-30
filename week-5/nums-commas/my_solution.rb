# Numbers to Commas Solo Challenge

# I did this challenge by myself.
# I spent 3 hours on this challenge.

# 0. Pseudocode

# What is the input?
# => The input is a positive integer.
# What is the output? (i.e. What should the code return?)
# => The output is a comma-separated integer as a string.
# What are the steps needed to solve the problem?
# => Define a method which takes a single argument of positive integer.
# => Check if the argument is positive.
# => If the argument is not positive, return nil!
# => If it is positive, execute method body
# => Take the number_to_separate and convert it to a string.
# => Reverse the number to simplify the process
# => Scan the number into chunks of 3 characters or 'one or more digits' until end of the line.
# =>Then, combine the chunks with ',' between the chunks (.join)
# => Reversing the string back.

# 1. Initial Solution

def separate_comma(number_to_separate)
  return nil if number_to_separate < 0
  number_to_separate.to_s.reverse.scan(/...|\d+$/).join(',').reverse
end
p separate_comma(-1747575702)

# 2. Refactored Solution




# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# Was your pseudocode effective in helping you build a successful initial solution?
# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
# How did you initially iterate through the data structure?
# Do you feel your refactored solution is more readable than your initial solution? Why?
