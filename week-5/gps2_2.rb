# Release 3 : Test your solution
# Create a new list
# Add the following items to your list
    # Lemonade, qty: 2
    # Tomatoes, qty: 3
    # Onions, qty: 1
    # Ice Cream, qty: 4
# Remove the Lemonade from your list
# Update the Ice Cream quantity to 1
# Print out your list (Is this readable and nice looking)?

#Pseudocode
# Define the methods with 5 different methods,
# 1st -> create a list, with help of hash
# key -> ingre. value -> quantity

# def make_list(item, quantity)
#   groceries = { item => quantity}
#   return groceries
# end
# list = make_list("lemonade", 2)
# p list

# 2nd -> add item with qty
  # tomatoes, qty 3
  # onions, qty 1
  # ice cream, qty 4

list = {}

def add_item(item, quantity, list)
  list[item] = quantity
  return list
end
p add_item("tomatoes", 3, list)
p add_item("onions", 1, list)
p add_item("ice cream", 4, list)

# 3rd -> remove the item from the list
def remove_item(item, list)
  list.delete(item)
  return list
end
p remove_item("lemonade", list)

# 4th -> update quantities of the list
def update_quantity(item, quantity, list)
  list[item] = quantity
  return list
end

p update_quantity("ice cream", 1, list)

# 5th -> prints the lists
def print_list(list)
  list.each do |item, quantity|
    puts "#{item} : #{quantity}"
  end
end

print_list(list)


#### Refactored Solution done by me.

# def create_list
#   Hash.new
# end
#
# def add_item(list, item, quantity)
#   list[item] = quantity
# end
#
# def remove_item(list, item)
#   #list[item] = 0
#   list.delete(item)
# end
#
# def update_item(list, item, quantity)
#   list[item] = quantity
#   #add_item(list, item, quantity)
#   #more readable to have this method as is even though it is basically the exact same code;
# end
#
# def print_list(list)
#   #puts list
#   list.each do |a,b|
#     puts a.to_s + " - " + b.to_s
#   end
# end
#
# my_list = create_list
# add_item(my_list, 'Lemonade', 2)
# add_item(my_list, 'Tomatoes', 3)
# add_item(my_list, 'Onions', 1)
# add_item(my_list, 'Ice Cream', 4)
# remove_item(my_list, 'Lemonade')
# update_item(my_list, 'Ice Cream', 1)
# print_list(my_list)

#Release 5: Reflect
# What did you learn about pseudocode from working on this challenge?
# => It really helps us to break down the problem and work on the challenge. It's far easier if you're thorough in your pseudocode and makes much easier to reference your code structure and put it to an initial solution.

# What are the tradeoffs of using Arrays and Hashes for this challenge?
# => We decided to used Hashes as we could easily identify items as keys and the quantities as values in the hash. With array, we had to know the index number and retrieve the value by calling it with index number, fortunately hash has key-value system that we could easily call the element by its name.

# What does a method return?
#Method returns the last function or program within a method, you can also include code block to perform some operation to each elements of an array or hash, and then you can return the performed result at the end of the method. Method will also return explicitly when you tell it. It is implemented with indicating the keyword'return' than you may include some conditions if you like.

# What kind of things can you pass into methods as arguments?
#You can pass strings, integers, floats or objects as an argument to a method.

# How can you pass information between methods?
#We pass information to a method with 'argument' when we call it. We "pass" arguments to a method when we call it. Let's say we are using an argument to pass the word, or string of words, that we want to use in the method. When we pass those words into the method, they're assigned to the variable words and we can use them how we please from within the method.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# The problem seemed complex at first but once we started working on it, we called some methods with other methods which made it very easy.
