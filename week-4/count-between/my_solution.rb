# Count Between

# I worked on this challenge by myself.

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below
# Pseudocode
# def count_between(list_of_integers, lower_bound, upper_bound)
#   # Create an array with zero elements.
#   array=Array.new(0)
#   # Take each element of the list_of_integers array and compare with lower_bound.
#   list_of_integers.each do |integer|
#     #If it is larger or equals to the lower_bound, then
#     # Check if it is smaller or equals to the upper_bound.
#       if (integer > lower_bound) || (integer == lower_bound)
#           if (integer < upper_bound) || (integer == upper_bound)
#           #If it is, take this element and push into the new array.
#               array.push(integer)
#           end
#       end
#   # Take next following element to compare both lower bound and upper_bound.
#   # Continue this until list_of_integers array is empty.
#   end
#   # Once it is empty, return the length of newly created array.
#   return array.length
# end
# # puts count_between([13,41,6,90],2,45)
# # array = [13,41,6]
# # array.length = 3
# #Refactored Solution

def count_between(list_of_integers, lower_bound, upper_bound)
    # (lower_bound..upper_bound).bsearch { |i| list_of_integers[i] }
    list_of_integers.count { |integer| lower_bound < integer < upper_bound }
end
