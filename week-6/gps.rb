
# 1. Readability
# 2. Logic (redundancy and syntax)


# Your Names
# 1) Fatma Ocal
# 2) Alan

# We spent[#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)

  # library is the _____________.
  # ingredients
  # desert
#   ingredints_per_desert

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
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
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

#  Reflection
