# Calculate a Grade
# I worked on this challenge with Abe & Brian and Fatma.
#
def get_grade(n)
  #sequence of if else statemnets with >=thresholds like 90, 80, 70 etc.
  #will need to include argumaents as an input for the average
  #return the string value of the letter grade
  if n>= 90
    "A"
  elsif n>= 80
    "B"
  elsif n >= 70
    "C"
  elsif n>= 60
    "D"
  else
    "F"
  end
end

# REFACTORED SOLUTION is done by myself only.

def get_grade(n)
    case
    when n >= 90
      "A"
    when n >= 80
      "B"
    when n >= 70
      "C"
    when n >= 60
      "D"
    else
      "F"
    end
end
