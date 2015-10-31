# Numbers to Commas Solo Challenge

# I did this challenge by myself.
# I spent 3 hours on this challenge.

# 0. Pseudocode for Unrefactored Solution

# What is the input?
# => The input is a positive integer.
# What is the output? (i.e. What should the code return?)
# => The output is a comma-separated integer as a string.
# What are the steps needed to solve the problem?
# => Define a method which takes a single argument of positive integer.
# => Check if the argument is positive.
# => If the argument is not positive, return nil!
# => If it is positive, continue with method body
# => Create a new array to store the chunks.
# => Take the number_to_separate and convert it to a string and reverse the number.
# => Scan the number into chunks of 3 characters or 'one or more digits'(remaining digits) until end of the line.
# => Put the chunks into the array which we created before.
# => Then, combine the chunks with ',' between the chunks
# => Reversing the string back.

# 1. Initial Solution
def separate_comma(number_to_separate)
  return nil if number_to_separate < 0
  numbers=[]
  numbers.unshift(number_to_separate.to_s.reverse.scan(/...|\d+$/)).join(',').reverse
end
p  separate_comma(1234627900)

# 1. Pseudocode for refactored solution
# => Define a method which takes a single argument of positive integer.
# => Check if the argument is positive. If the argument is not positive, return nil!
# => If it is positive, continue with method body
# => Take the number_to_separate and convert it to a string. Then, reverse it.
# => Scan the number into chunks of 3 characters or 'one or more digits'(remaining digits) until end of the line.
# =>Then, combine the chunks with ',' between the chunks
# => Reversing the string back.
#
# # # 2. Refactored Solution
def separate_comma(number_to_separate)
  return nil if number_to_separate < 0
  number_to_separate.to_s.reverse.scan(/...|\d+$/).join(',').reverse
end
p separate_comma(123435627900)


# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# => I broke down the entire process into small processes/steps and thought what is exactly happening on each processes. I thought about what steps intepreter is doing from begining till end, when I put the steps in pseudocode and tell the process loud in english, then it was easier to put them in code.

# Was your pseudocode effective in helping you build a successful initial solution?
# => It really helped me to understand the process and what actually intepreter does on each step. I also learned about Regex (regular expression), which is great way for the pattern matching in string.

# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
# => I used methods of .reverse, .scan,and .join . They were really powerful in terms of simplying the code and executing the processes. They were really helpful, flexible and powerful to execute the code with less numbers of code, conditions that I need to apply with each behaviour. I didn't need to create additional methods, I could easily use these methods. My solution was more expensive from the computer processing time and memory allocation because I was creating a new empty array to store the chunks.

# How did you initially iterate through the data structure?
# In my Unrefactored solution, I iterate over string which was converted from the integer and it looped over a set of data/character in the string with help of 'scan' method I separate the string into 3 characters chunks and 1 or more characters (case for 1 or 2), and store the chunks into an ordered list of array. In my refactored solution, it follows the same process of iterating through string except I didn't store it into a new array before reversing the number back.

# Do you feel your refactored solution is more readable than your initial solution? Why?
# => Yes, I think my refactored solution is more readable :) With use of powerful methods, I could able to do what I want with less code. I also think that programs that are hard to read and have complex conditional logics are hard to modify. Unrefactored code may also sometimes require additional behaviours, in this cases it is more difficult for programmers to change the code for modification. Refactored solution made my code very simple, easy to read, I can easily modify it if required.
