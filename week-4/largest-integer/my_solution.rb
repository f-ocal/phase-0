
# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_numbers)
  # Return if the array doesn't have any element.
  return nil if list_of_numbers.length == 0
  # Define the variable to the first element of the array.
  largest_number = list_of_numbers[0]
  # Take the first number!! and store inside defined variable.
  list_of_numbers.each do |number|
    # Go ahead and take the next one
    # Compare that one with the stored number in the variable.
    if largest_number < number
      # Whichever is larger, keep that number inside the variable.
      largest_number = number
    end
    # Continue this process until the array is empty.
  end
  # Return the largest number.
  largest_number
end
