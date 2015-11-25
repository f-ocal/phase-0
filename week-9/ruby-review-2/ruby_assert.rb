# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.

# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
=begin

When I run the code, we call assert method by passing block as argument.
(It is similar way that we call methods and pass argument with it. Here, our argument is a block between curly braces.
After we call assert method with block argument, assert method runs and execute the code within the method body.
The code (raise "Assertion failed!" unless yield) raises an message of 'Assertion failed!' if yield block is not true.
By yield here, we are calling a block outside of the method. The blocks are { name == "bettysue" } and { name == "billybob" }
Whenever the block gives true value, we won't raise an 'Assertion failed!' message. The block value has name == 'bettysue' or 'billybob'.
We have name variable which equals to "bettysue", when the block has the same value as this variable it returns true.
Howeever, our code will turn raise an 'Assertion failed!' message because the last block of yield has value of 'billybob' which is not same as name variable.

=end

# 3. Copy your selected challenge here
# I picked the Credit Card challenge here. My code is

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
  end

  def convert_to_array_of_digits(integer)
    integer.to_s.split(//).map(&:to_i)
  end

  def convert_array_to_single_digits(array_of_digits)
    convert_to_array_of_digits(array_of_digits.join.to_i)
  end
end

# This is the assert function that we write to check the driver code.
  def assert
    raise 'The card number is not valid ' unless yield
  end

cc = CreditCard.new(1234567891234567)
p cc.check_card

# Driver Code
card_1 = CreditCard.new(1111111111111111)
card_1.check_card == false
card_2 = CreditCard.new(4408041234567893)
card_2.check_card == true

# 4. Convert your driver test code from that challenge into Assert Statements
# When I run the code, cc is an object CreditCard class, we are checking if the given card number is valid.
# We got result of false, so this card number is not valid.
# Our driver code, card_1 returns us false, and card_2 returns us true. We can re-write them in below assert messages:
assert { card_1.check_card == false }
assert { card_2.check_card == true } # This should return true since our card number is not valid.

# Let's write rspec for this program.
# Do not forget to run the file with rspec filename.rb to check if it passes the tests:
describe CreditCard do
let(:invalid_credit_card) {CreditCard.new(1234567891234567)}
let(:valid_credit_card) { CreditCard.new(4111111111111111) }

  describe '#initialize' do

    it 'does not raise an error with 16 digit card number' do
      expect{invalid_credit_card}.to_not raise_error
    end

    it 'does raise an error with 15 or few digit card numbers' do
      expect{CreditCard.new(123456789123456)}.to raise_error ArgumentError, 'The card is not valid'
    end

    it 'does raise an error with 17 or more digit card numbers' do
      expect{CreditCard.new(12345678912345699)}.to raise_error ArgumentError, 'The card is not valid'
    end
  end

  describe '#check_card' do
    it 'is not a valid credit card number' do
      expect(invalid_credit_card.check_card).to eq false
    end

    it 'is a valid credit card number' do
      expect(valid_credit_card.check_card).to eq true
    end
  end

end
