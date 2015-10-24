# Concatenate Two Arrays

# I worked on this challenge myself.


# Your Solution Below

#Pseudocode
def array_concat(array_1,array_2)
  #Return to empty array if both arrays were empty.
  return [] if (array_1 == 0) && (array_2 == 0)
  # Take each element of the array_2.
    array_2.each do |element|
      # Insert the element into the array_1 (push - from the end of the array)
      array_1.push(element)
      # Do this until array_2 is empty
    end
  # Once, it is finished return to the array_1
  array_1

end

#REFACTORED Solution
def array_concat(array_1, array_2)
  array_1.concat(array_2)
end
puts array_concat(['5','4'],['3','apple'])
