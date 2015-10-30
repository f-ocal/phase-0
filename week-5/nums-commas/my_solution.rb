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
  #Create a new array called numbers to store the chunks
  numbers=Array.new
  a = number_to_separate.to_s
  #Count from backwards index, -1, -2, -3 and take the 3 characters
  numbers = numbers.unshift(a.slice!(-3,3))
  #Store the remaining characters which are less than 3 into the array.
  numbers.unshift(a)
  #Combine the chunks with ',' between the chunks.
  p numbers.join(',')
end
p separate_comma(1758702)

# # 2. Refactored Solution
# def separate_comma(number_to_separate)
#   return nil if number_to_separate < 0
#   number_to_separate.to_s.reverse.scan(/...|\d+$/).join(',').reverse
# end
# p separate_comma(1747575702)



# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# => I broke down the entire process into small processes/steps and thought what is exactly happening on each processes.

# Was your pseudocode effective in helping you build a successful initial solution?
# => It really helped me to understand the process and what actually intepreter does on each step. I also learned about Regex (regular expression), which is great way for the pattern matching in string.

# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
# => I used methods of .reverse, .scan,and .join . They were really powerful in terms of simplying the code and executing the processes. They were really helpful, flexible and powerful to execute the code with less numbers of code, conditions that I need to apply with each behaviour. I didn't need to create additional methods, I could easily use these methods.

# How did you initially iterate through the data structure?

# Do you feel your refactored solution is more readable than your initial solution? Why?
# => Yes, I think my refactored solution is more readable :) With use of powerful methods, I could able to do what I want with less code. I also think that programs that are hard to read and have complex conditional logics are hard to modify. Unrefactored code may also sometimes require additional behaviours, in this cases it is more difficult for programmers to change the code for modification. Refactored solution made my code very simple, easy to read, I can easily modify it if required.
