# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Michael Whelpley.
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:
# Remove the spaces amongst the numbers.
# Check for valid input. 16 digit long and integer.
# Define insance variable

# Task 1:
# Convert the integer to an string, and Split the string then turn string into an array.
# Double the element if the index number is even.
# Task 2:
# Define accumulator with initial value of 0.
# Iterate through every element if it is single character, add that to the accumulator.
# If it is double characters, convert it to string, split the string and convert both of the characters back to integer, and then Iterate through sub array by adding all values.
#Task 3:
# modulus the sum with 10, if it equals to 0 then it is valid credit card.
# If it is false, return false.
# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# (array.dup.to_s.gsub(" ", "").length) to remove the whitespace if input includes.

class CreditCard

  def initialize(input)
    raise ArgumentError.new('The card is not valid') unless (input.to_s.length == 16 ) && (input.is_a? Integer)
    @card = input
    @accumulator = 0
  end

  def double_even_index
    array = @card.to_s.split(//)
    array.map! {|character| character.to_i }
    (0..15).each { |index| (array[index] =(array[index] * 2)) if index.even? }
    return array
  end

  def sum_digits(array)
    array.each do |digit|
      if (digit < 10)
        @accumulator += digit
      else
        digit.to_s.split(//).each {|x| @accumulator += x.to_i }
      end
    end
  end

  def check_card
    sum_digits(double_even_index)
    @accumulator % 10 == 0
  end
end

cc=CreditCard.new(1234567891234567)
p cc.check_card


# Refactored Solution
class CreditCard

  def initialize(card_number)
    raise ArgumentError, 'The card is not valid' unless card_number.to_s.length == 16
    @card_number = card_number
  end

  def check_card
    doubled_index = double_even_index_elements(@card_number)
    summed_digits = sum_digits(doubled_index)
    (summed_digits % 10) == 0
  end

  private

  def double_even_index_elements(credit_card_number)
    array = convert_to_array_of_digits(credit_card_number)
    array.each_index do |index|
      array[index] *= 2 if index.even?
    end
  end

  def sum_digits(array_of_digits)
    convert_array_to_single_digits(array_of_digits).reduce(:+)
    #convert_array_to_single_digits(array_of_digits).inject(0) { |sum, x| sum + x}
  end

  def convert_to_array_of_digits(integer)
    integer.to_s.split(//).map(&:to_i)
  end

  def convert_array_to_single_digits(array_of_digits)
    convert_to_array_of_digits(array_of_digits.join.to_i)
  end
end

# Reflection
# What was the most difficult part of this challenge for you and your pair?

# What new methods did you find to help you when you refactored?

# What concepts or learnings were you able to solidify in this challenge?
