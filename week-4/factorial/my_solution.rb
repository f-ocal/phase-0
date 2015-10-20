# Factorial

# I worked on this challenge [by myself, with: ].
#Pseudocode
#First part
  #condition is zero
#Second part
  #build factorial by iteriating the number down to 1.

# Your Solution Below
def factorial(number)
  if number ==0
    return 1
  else
    result= 1
    i = number
    while i > 1
      result = result * i
      i= i - 1
    end
      return result
  end
end
