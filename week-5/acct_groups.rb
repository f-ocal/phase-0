
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
  p result
end
group_people(["Fatma", "Yasemin", "Burcu", "Zahide", "Nezahat","Bekir", "Kerem", "Ali", "Jim", "Jenny", "Alice", "Ayca"])

# Release 6: Reflect
# What was the most interesting and most difficult part of this challenge?
# At first, I spent lots of time with implying conditions (if and else or other conditions). It wasn't working at all, the weird thing is that my conditions never finish. After going back and working on pseudocode again, I found out what I should do and how I should.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# Yes, indeed. I think it was really brainstorming and I did great job on this.

# Was your approach for automating this task a good solution? What could have made it even better?
# I think my solution is very solid. I would have worked on printing out groups with names, but it isn't that necessary. The code does exactly what I wanted to do.

# What data structure did you decide to store the accountability groups in and why?
# I used arrays, as data structures because it was easier to store each person's name and printing purpose too.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# I think my solution is simple, readable and very effient. I tried to refactor but I couldn't call any refactoring here.
