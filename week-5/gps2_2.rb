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

def make_list(item, quantity)
  groceries = { item => quantity}
  return groceries
end
list = make_list("lemonade", 2)
p list

# 2nd -> add item with qty
  # tomatoes, qty 3
  # onions, qty 1
  # ice cream, qty 4

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

#Release 5: Reflect
# What did you learn about pseudocode from working on this challenge?
# => It really helps us to break down the problem and work on the challenge.
# What are the tradeoffs of using Arrays and Hashes for this challenge?
# What does a method return?
# What kind of things can you pass into methods as arguments?
# How can you pass information between methods?
# What concepts were solidified in this challenge, and what concepts are still confusing?
