# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Michael Whelpley on the initial solution. I have done refactored solution by myself.

# I spent 2 hours on this challenge.

# Pseudocode

# Input: credit card number
# Output:  true or false based on validation of credit card
# Steps:

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

# class CreditCard
#
#   def initialize(input)
#     raise ArgumentError.new('The card is not valid') unless (input.to_s.length == 16 ) && (input.is_a? Integer)
#     @card = input
#     @accumulator = 0
#   end
#
#   def double_even_index
#     array = @card.to_s.split(//)
#     array.map! {|character| character.to_i }
#     (0..15).each { |index| (array[index] =(array[index] * 2)) if index.even? }
#     return array
#   end
#
#   def sum_digits(array)
#     array.each do |digit|
#       if (digit < 10)
#         @accumulator += digit
#       else
#         digit.to_s.split(//).each {|x| @accumulator += x.to_i }
#       end
#     end
#   end
#
#   def check_card
#     sum_digits(double_even_index)
#     @accumulator % 10 == 0
#   end
# end
#
# cc=CreditCard.new(1234567891234567)
# p cc.check_card




# Refactored Solution done by me.
# Each specific operation has been captured into a separate methods.

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

def assert
  raise 'help me!' unless yield
end

# returns false for invalid credit card
# cc=CreditCard.new(1234567891234567)

# assert {cc.check_card == false}
# This is my rspec test that I wrote.

describe CreditCard do
  let(:invalid_credit_card) { CreditCard.new(1234567891234567) }
  let(:valid_credit_card) { CreditCard.new(4111111111111111)}
  let(:credit_card_with_too_many_digits) {12345678912345996}


  describe '#initialize' do
    it 'does not raise error with 16 digit credit card' do
      expect{ invalid_credit_card }.to_not raise_error
    end

    it 'does raise error with 15 or fewer digit credit card' do
      expect{CreditCard.new(123456789123456)}.to raise_error ArgumentError, 'The card is not valid'
    end

    it 'does raise error with 17 or more digit credit card' do
      expect{CreditCard.new(credit_card_with_too_many_digits)}.to raise_error ArgumentError, 'The card is not valid'
    end
  end

  describe '#check_card' do
    it 'returns false if credit card is not valid' do
      # cc = CreditCard.new(1234567891234567)
      expect(invalid_credit_card.check_card).to eq false
    end

    it 'returns true if credit card is valid' do
      expect(valid_credit_card.check_card).to eq true
    end
  end
end

# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?
  At the initial solution, we had some challenge with `inject` method. We defined accumulator and initialized to 0 instead. While I was working on the refactoring later by myself, I used reduce method and work on the inject, which both work perfectly.

What new methods did you find to help you when you refactored?
  I learned a lot about how to refactor the code with consideration of object oriented meaning that I have taken out each operation into separate method with given clear, distinctive method name. I refactored ArgumentError instead of creating new, you pass the error message as argument with the condition. I also used private which blocks anyone accesing methods outside, for instance you cannot call any of the methods within private, I set check_card to public only. The check_card method calls other private methods. This brings huge security advantages so none can change the code in private and they should ony get output whether the card is valid or not. I think my refactored solution is great, very readable, easy to understand what is happening.

What concepts or learnings were you able to solidify in this challenge?
  Some of the methods such as split, inject and reduce, private & public methods and refactoring.
=end
