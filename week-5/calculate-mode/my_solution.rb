# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
# 0. Pseudocode

def mode(array)
  new_hash = {}
  array.each { |x|
    if new_hash[x] != nil
      new_hash[x] += 1
    else
      new_hash[x] = 1  # creating new key since it is not existing.
    end
  }
  most_common = new_hash.values.max
  result = []
  new_hash.each { |x,y|
    if most_common == y  #just tried calling / sending a link, so
      result.push(x)
    end
  }
  return result
  puts result
end
mode([1,2,3,4,5,4,2,2])
# 3. Refactored Solution




# 4. Reflection
