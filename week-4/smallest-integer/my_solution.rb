
# Smallest Integer

# I worked on this challenge myself.

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
#Pseudocode
def smallest_integer(list_of_numbers)
  # Return if the array doesn't have any element.
  return nil if list_of_numbers.length == 0
  # Define the variable to the first element of the array.
  smallest_number = list_of_numbers[0]
  # Take the first number and store inside defined variable.
  list_of_numbers.each do |number|
    # Go ahead and take the next one.
    # Compare that one with the stored number in the variable.
    if smallest_number > number
      # Whichever is smaller, keep that number inside the variable.
      smallest_number = number
    end
    # Continue this process (loop) until the array is empty.
  end
  # Return the smallest number.
  smallest_number
end

# Another solution to find the smallest integer
def smallest_integer(list_of_nums)
  list_of_nums.sort!
  return list_of_nums[0]
end

# #Refactored Solution
def smallest_integer(list_of_numbers)
  list_of_numbers.min
end
