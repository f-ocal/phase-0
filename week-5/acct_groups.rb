
# I have written a driver code (test) for this program, you can find it in the following link
# https://github.com/f-ocal/phase-0/blob/master/week-5/acct_groups_spec.rb

# Pseudocode
# Input : An array of list of students.
# Output : An array of arrays that contains student names in groups of 3-5 with preference of larger groups.
# group into fives.
# check last group size. If last group size is:
# 1 -> take last two groups and make them 3,3
#      Take 2nd to last group, combine with last group, slice into groups of 3
# 2 -> take last two groups and make them 4,3
#      Take 2nd to last group, combine with last group, slice into groups of 4
# 3 -> no action
# 4 -> no action
# 5 -> no action

def slice_into_groups(elements, slice_size)
  result = []
  elements.each_slice(slice_size) { |element_group| result << element_group }
  result
end

def combine_last_two_groups!(result)
  result.slice!(-2,2).flatten
end

def group_people(students)
  return nil if students.length < 3
  result = slice_into_groups(students, 5)
  if result.last.length == 2
    result += slice_into_groups(combine_last_two_groups!(result), 4)
  elsif result.last.length == 1
    result += slice_into_groups(combine_last_two_groups!(result), 3)
  end
  result
end

# Release 6: Reflect
# What was the most interesting and most difficult part of this challenge?
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# Was your approach for automating this task a good solution? What could have made it even better?
# What data structure did you decide to store the accountability groups in and why?
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
