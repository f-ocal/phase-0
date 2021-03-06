# Pad an Array

# I worked on this challenge with Abe, Brian and Fatma.

# What is the input?
#  Two definite inputs; array and integer, optional a string.
# What is the output? (i.e. What should the code return?)
# A new array, which begins with the existing array along with additional elements, the length array will as neccessary as 2nd argument, (array[1]), repeating value will be the 3rd argument.
# What are the steps needed to solve the problem?
# Please see below Pseudocode.

# Pseudocode:
# 1. compare the length of 2nd argument with the size of the array. If it is not equal, than you need to evalute the following code according to the 2nd argument.
# 2 .Determine if 3rd argument exists, than default will be equals to that argument, if there is no 3rd arguments than it is equals to nil.
# 3. add additional default values according to required additional length for the array size.

# 1. Initial Solution for Destructive Method

def pad!(array, min_size, value = nil)
  while array.length < min_size.to_i
    array.push(value)
  end
  return array
end
pad!([1,2,3],5,'apple')

# 2. Refactored Solution for Destructive Method
# We have already factored the current solution from if to while.


###########################################################
# 1. Initial Solution for Non-Destructive Method
def pad(array, min_size, value = nil)
  new_array = array.collect {|x| x}
  while new_array.length < min_size
    new_array.push(value)
  end
  p new_array
  p array
end
pad(['a','b'],5,'filling')

# Another solution
# Destructive
def pad!(array, min_size, value = nil)
  array.push(value) while array.length < min_size
  return array
end
# Non-Destructive
def pad(array, min_size, value = nil)
  new_array = array.clone
  pad!(new_array, min_size, value)
  return new_array
end

#4. Reflection
# Were you successful in breaking the problem down into small steps?
# Yes, we broke the problem down into the core pieces of identifying key steps and what action should be taken.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# It was pretty straight forward; however we found out that setting variable equalities were challenging in non-destructive method.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# We had some problem with non-destructive method initially since we didn't realize that push was a destructive method.

# When you refactored, did you find any existing methods in Ruby to clean up your code?
# While was easy to read and used for refactoring from if/

# How readable is your solution? Did you and your pair choose descriptive variable names?
# I think it is very clear and readable, and we try to make it clear as possible as we could.

# What is the difference between destructive and non-destructive methods in your own words?
# The non-destructive creates a new array by collecting the values of the input array, and modifying those not original data whereas the destructive array modifies the input array that destructs the original data.
