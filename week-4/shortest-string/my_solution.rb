# Shortest String

# I worked on this challenge myself.

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Pseudocode:


#Your Solution Below

# def shortest_string(list_of_words)
# # Return to nil if the array is zero.
#   return nil if list_of_words.length == 0
# # Define the variable to the first element of the array.
#   shortest_number=list_of_words[0]
# # Take the next element from the array, compare its length with the stored element's length.
#     list_of_words.each do |word|
#       if word.length  < shortest_number.length
#   # If its shorter, replace it with the variable. Otherwise, do not keep that element.
#         shortest_number=word
#       end
# # Continue this until the array is empty!
#     end
#   shortest_number
# # Once the array is empty than return the shortest number.
# end

#Refactored Solution

def shortest_string(list_of_words)
  list_of_words.min { |x,y| x.length <=> y.length }
end
puts shortest_string(["cat", "fatma"])
