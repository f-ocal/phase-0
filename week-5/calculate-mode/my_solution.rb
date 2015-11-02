# Calculate the mode Pairing Challenge

# I worked on this challenge with Abe, Brian and Fatma.
# I spent 2 hours on this challenge.

# What is the input?
# an array contains integers.
# What is the output? (i.e. What should the code return?)
# Output is the key of the hash which has the highest value.
# What are the steps needed to solve the problem?
# Please see below Pseudocode

# 1. Initial Solution
# 0. Pseudocode

# Define a new empty hash
# iterate over the array
# check if array's value is already a key in the hash
# if so, append to the corresponding array
# if not, create new key and corresponding array
# define a new variable to give the highest value from the hash
# use each method to iterate over hash
# if highest value from the hash is equals to the value from the old hash, than
# push key to new array of all keys that are equal to longest array length

def mode(array)
  new_hash = {}
  array.each do |x|
    if new_hash[x] != nil
      new_hash[x] += 1
    else
      new_hash[x] = 1  # creating new key since it is not existing.
    end
  end

  most_common = new_hash.values.max
  result = []
  
  new_hash.each do |x,y|
    if most_common == y  #just tried calling / sending a link, so
      result.push(x)
    end
  end
  # return result
  puts result
end
mode([1,2,3,4,5,4,2,2])
# 3. Refactored Solution




# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# What issues/successes did you run into when translating your pseudocode to code?
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
