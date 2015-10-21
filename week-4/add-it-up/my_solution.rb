# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Abe and Brian.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: an array of numbers
# Output: sum of all numbers within the array
# Steps to solve the problem.
  #define variable result=0
  #add each number to the result

# 1. total initial solution
  #each or while loop
  def total(my_array)
    result=0
    my_array.each { |a| result= result + a }
    return result
  end
# 3. total refactored solution
  #Works in Ruby on Rails
    def total(my_array)
      my_array.sum
    end
  # Make use of .reduce:
    def total(my_array)
      my_array.reduce( :+ )
    end
# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
  # Input: an array of strings
  # Output: a sentence with all of the words from the array.
# Steps to solve the problem.
  #define variable result=empty string
  #add space after each element, add next word.
# 5. sentence_maker initial solution
  def sentence_maker(my_sentence)
    result=my_sentence.shift
    my_sentence.each { |x| result= result + " " + x.to_s }
    result=result + "."
    result.capitalize!
  end
# 6. sentence_maker refactored solution

  def sentence_maker(my_sentence)
    result=my_sentence.join(" ")
    result=result.capitalize + "."
  end
