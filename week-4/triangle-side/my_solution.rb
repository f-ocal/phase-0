
# I worked on this challenge with Abe, and Brian.


# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!

a !=0 && b !=0 && c !=0 && (a + b) > c && (a +c) > b && (b + c) > a

#
# if (a !=0 && b !=0 && c !=0)
#   if (a + b) > c
#     if ( a+c) > b
#       if (b+c) > a
#         return true
# else
#   return false
# end

end
