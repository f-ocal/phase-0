# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

p nested_data[:array][1][:hash]

# attempts:
# ============================================================



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

 number_array.map! do |x|
  if x.is_a? Integer
     x+5
  else
    x.map! do |i|
       i+5
    end
  end
end

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |x|
  if x.is_a? String
     x +"ly"
  else x.map! do |y|
    if y.is_a? String
      y+"ly"
    else y.map! do |z|
      z+"ly"
      end
    end
  end
  end
end

p startup_names


# Refactored Solution done by me.

# startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
# p startup_names.flatten.map { |element| element + "ly"}
# # this destructs the nested data structure so elements are return as within single array after including +ly.


# # Another refactored Solution
# print startup_names.map { |element|
#   if element.kind_of?(Array)
#     element.map { | inner |
#       if inner.kind_of?(Array)
#         inner.map {|inner_inner| inner_inner.capitalize + "ly"}
#       else
#         inner.capitalize + "ly"
#       end
#     }
#   else
#     element.capitalize + "ly"
#   end
# }
# print startup_names

# Refactored Solution for above refactored solution ;)))
# startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
# def recursive_method(array)
#   array.map! do |e|
#     if e.kind_of?(Array)
#       recursive_method(e)
#     else e << "ly"
#     end
#   end
# end
# recursive_method(startup_names)


# REFLECTION
=begin
What are some general rules you can apply to nested arrays?
  Well, you need to keep track of the index number of the elements. You shouldn't confuse yourself when another array is nested within an array. It is also helpful if you put the nested array to the next line instead of putting all code into a single line.

What are some ways you can iterate over nested arrays?
  map allows you to iterate through an array and .is_a? also checks if any of the elements meets the requirements like if they are string or integer.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
  Not really, I used .map few times, because it is great method to iterate through an array.

=end
