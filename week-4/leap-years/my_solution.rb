# Leap Years

# I worked on this challenge [by myself, with: ].

#Every four years is a leap_year.
#2016, 2020 are leap years.
#check input is divisible by four.
#use modulus function with return of 0 when it is divided by 4.
# year = 2000 is a leap year, because it is divisible by 400.
# year = 1980 is not a lep year, because it is not divisible by 400, but divisible by 100.

# Your Solution Below
def leap_year?(year)

  year % 4 == 0 && (year % 100 !=0 || year % 400 ==0 )

end
