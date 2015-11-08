
# 1. Readability
# 2. Logic (redundancy and syntax)

# Your Names
# 1) Fatma Ocal
# 2) Alan

# We spent 1.5 hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)

  # library is the _____________.
  # ingredients
  # desert
  # ingredints_per_desert

  ingredients_per_desert = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  #   error_counter = 3

  # Figure out if the bakery can make the requested food.
  # aka does the list of food INCLUDE the item_to_make.
  # Hash#include?
  # Are there any built in methods that can do this for you?
  #   ingredints_per_desert.each do |k, v|
  #     if ingredints_per_desert[food] != ingredints_per_desert[item_to_make]
  #       error_counter += -1
  #     end
  #   end

  can_make_food = ingredients_per_desert.include?(item_to_make)

  # If the bakery CANNOT make the request food, raise an error.
  unless can_make_food #error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  # array[index] => element
  # ingredients_for_item_to_make

  # Find the number of ingredients needed to make requested food.

  serving_size = ingredients_per_desert.values_at(item_to_make)[0]
  # In library...
  # Find the value at key = item_to_make
  # So if we pass in "cookie" => [1]
  #                  "cake"   => [5]

  # Values at returns an ARRAY of all values that match a given key.
  # However, since there can only be one of each key in the hash...
  # Values_at returns a single element array.
  # values_at("cake") => [5]
  # ["apples", "bananas][0] => "apples"
  # [5][0] => 5
  # The  "[0]" is converting the values_at array to an integer.

  # serving_size_mod is the modulus (remainder) of order_ quantity with serving_size

  # Figure out if there would be any leftover ingredients.
  leftover_ingredients = order_quantity % serving_size

  # when remainder is 0 it returns the cal to make item with how many quantities
  if leftover_ingredients == 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{leftover_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
  #   case serving_size_mod
  #   when 0
  #     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  #   else
  #     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TO DO: MAKE THIS FEATURE"
  #   end
end

# calls various items with quantities
p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
#p serving_size_calc("THIS IS AN ERROR", 5)

# Refactored Solution
# def serving_size_calc(item_to_make, order_quantity)
#   ingredients_per_desert = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   can_make_food = ingredients_per_desert.include?(item_to_make)
#   unless can_make_food #error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end
#   serving_size = ingredients_per_desert[item_to_make]
#   leftover_ingredients = order_quantity % serving_size
#   amount = ""
#   quantity = 0
#
#   ingredients_per_desert.each do |k, v|
#     if(leftover_ingredients % v == 0)
#       amount = k
#       quantity = leftover_ingredients / v
#     end
#   end
#   leftover_ingredients = order_quantity % serving_size
#   if leftover_ingredients == 0
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
#   else
#     "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{leftover_ingredients} leftover ingredients. Suggested baking items: TO DO: MAKE THIS FEATURE"
#   end
# end
#
# p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# #p serving_size_calc("THIS IS AN ERROR", 5)
#
#
# Reflection

=begin
What did you learn about making code readable by working on this challenge?
  Making code readale helps to understand how the code runs and what is happening within program in shorter time.

Did you learn any new methods? What did you learn about them?
  Yes, I learned values_at method(key) which return an array that contains values asssociated with the given keys. (I like to think about it like, it returns values in an array of the keys you asked for)

What did you learn about accessing data in hashes?
  On the initial solution, we have accessed the library (ingredients_per_desert), hash containing key and value pairs with .each, which helps to iterate through. On the refactored solution, we use .include? method to check if hash includes item_to_make.

What concepts were solidified when working through this challenge
  It helped me to comprehend more on what each code is functioning and how they are calling other functions or even methods. Guide, Michael explained very well what refactoring is about and how we should refactor, that was really good.
=end
