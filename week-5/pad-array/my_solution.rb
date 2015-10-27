# Pad an Array

# I worked on this challenge with Abe, Brian and Fatma.

# I spent start- 11:00 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.
=begin
pad([1,2,3], 5) should return [1,2,3,nil,nil]
pad([1,2,3], 5, 'apple') should return [1,2,3,'apple', 'apple']
If the minimum size is less than or equal to the length of the array, it should just return the array.
=end

# Pseudocode for Non-D Solution.

# What is the input?
#  Two definite inputs; array and integer, optional a string.

# What is the output? (i.e. What should the code return?)
# A new array, which begins with the existing array along with additional elements, the length array will as neccessary as 2nd argument, (array[1]), repeating value will be the 3rd argument.

# What are the steps needed to solve the problem?
# 1. compare the length of 2nd argument with the size of the array. If it is not equal, than you need to evalute the following code according to the 2nd argument.
# 2 .Determine if 3rd argument exists, than default will be equals to that argument, if there is no 3rd arguments than it is equals to nil.

# 3. add additional default values according to required additional length for the array size.

# 1. Initial Solution
# Destructive Method
def pad!(array, min_size, value = nil)
  while array.length < min_size.to_i
    array.push(value)
  end
  return array
end
pad!([1,2,3],5,'apple')

# Non-Destructive Method

def pad(array, min_size, value = nil)
  new_array = array.collect {|x| x}
  while new_array.length < min_size
    new_array.push(value)
  end
  p new_array
  p array
end
pad(['a','b'],5,'filling')

# 3. Refactored Solution


#4. Reflection
#Were you successful in breaking the problem down into small steps?
#Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# When you refactored, did you find any existing methods in Ruby to clean up your code?
# How readable is your solution? Did you and your pair choose descriptive variable names?
# What is the difference between destructive and non-destructive methods in your own words?