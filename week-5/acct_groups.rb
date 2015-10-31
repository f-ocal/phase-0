# Creating accountability groups into fives, or fours and threes.

def slice_into_groups(elements, slice_size)
  result = []
  elements.each_slice(slice_size) do |element_group|
      result << element_group
  end
  result
end

def group_people(students)
  # group into fives.
  # check last group size. If last group size is:
  # 1 -> take last two groups and make them 3,3
  #      Take 2nd to last group, combine with last group, slice into groups of 3
  # 2 -> take last two groups and make them 4,3
  #      Take 2nd to last group, combine with last group, slice into groups of 4
  # 3 -> no action
  # 4 -> no action
  # 5 -> no action

  result = slice_into_groups(students, 5)
  if result.last.length == 2
    last_two_groups = result.slice!(-2,2)
    result += slice_into_groups(last_two_groups.flatten, 4)
  end

  if result.last.length == 1
    last_two_groups = result.slice!(-2,2)
    result += slice_into_groups(last_two_groups.flatten, 3)
  end
  result
end
