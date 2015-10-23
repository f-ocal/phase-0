# Longest String

# I worked on this challenge myself.

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


#Your Solution Below

def longest_string(list_of_words)
# Return to nil if the array is zero.
  return nil if list_of_words.length == 0
  # Define the variable to the first element of the array.
  longest_number=list_of_words[0]
  # Take the next element from the array, compare its length with the stored element's length.
    list_of_words.each do |word|
      if word.length  > longest_number.length
        # If its longer, replace it with the variable. Otherwise, do not keep that element.
        longest_number=word
      end
      # Continue this until the array is empty!
    end
  longest_number
# Once the array is empty than return the shortest number.
end

#Refactored Solution

def longest_string(list_of_words)
  list_of_words.max { |x,y| x.length <=> y.length }
end
