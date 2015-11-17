# Factorial

# I worked on this challenge with Brian and Abe.
#Pseudocode
#First part
#condition is zero
#Second part
#build factorial by iteriating the number down to 1.
def factorial(number)
  if number ==0
    return 1
  else
    result= 1
    i = number
    while i > 0
      result = result * i
      i= i - 1
    end
      return result
  end
end

#Another solution for refactoring

def recursive_factorial(number)
  number <= 1 ? 1 : number * factorial(number-1)
end

# The below solution is my refactored solution - done by myself :)))

def factorial(number)
  (1..[number,1].max).reduce(:*)
end

# 2nd Refactored solution

def factorial(number)
  return 1 if [0,1].include? number
  result = number
  (2...number).each {|n| result *= n}
  result
end
