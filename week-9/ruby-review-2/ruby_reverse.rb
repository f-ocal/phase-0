# Reverse Words


# I worked on this challenge with Brian
# This challenge took me [#] hours.

# Pseudocode
=begin
define a method for reverse_words that will take a string as input
we'll then split that string input into an array of individual words
we'll then iterate through the array and reverse the characters in each word element
we'll then join the output back into a string and print it out
=end

# Initial Solution

def reverse_words(string)
  array = string.split(" ")
  reversed_array = array.each{|element| element.reverse!()}
  final = reversed_array.join(" ")
  p final
end

reverse_words("this is a test")

# Refactored Solution


def reverse_words(string)
  return string.split(" ").each{|element| element.reverse!()}.join(" ")
end

# Reflection
=begin

What concepts did you review in this challenge?
What is still confusing to you about Ruby?
What are you going to study to get more prepared for Phase 1?

=end
