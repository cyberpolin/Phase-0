# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # CONVERT string to ARRAY
  # CREATE hash with default value equal to one
  # LOOP through ARRAY to add hash keys
  # Assign item value to a hash key
  # print the list to the console [can you use one of your other methods here?]
# output: A hash with values equal to one

# Method to add an item to a list
# input: item name and optional quantity
# steps: Add new item key/value pairs to the hash
# output: Modified hash, with the added key/value

# Method to remove an item from the list
# input: Key of the item that needs to be removed
# steps: Call delete method for the specific key
# output: Modified hash, with the deleted key removed

# Method to update the quantity of an item
# input: Key for which item we wnt to update + new value
# steps: Reset the value for the key.
# output: Modified hash, with the value updated for the specific key

# Method to print a list and make it look pretty
# input: Hash with items and quantities
# steps:
 # Iterate the hash with a formatted text.
 # Inside the iteration, the keys and values will be converted to strings and wrapped in nice structure.
# output: Values printed on screen.

# INITIAL SOLUTION
# def create_list (string)
#  items = string.split()
#  list = Hash.new (1)
#  items.each do |item|
#     list[item] = 1
#  end
#  return list
# end

# def add_item(list, item_name, quantity=1)
#   list[item_name] = quantity
#   return list
# end

# def remove_item(list, item_name)
#   list.delete(item_name)
#   return list
# end

# def update_item(list, item_name, quantity)
#   list[item_name] = quantity
#   puts list
#   return list
# end

# def print_list(list)
#   puts "My Grocery list"
#   list.each do |k, v|
#   key = k.capitalize
#   puts "#{key} : #{v}"
#   end
# end

# list = create_list("carrots apples cereal pizza")
# add_item(list, "Tomatoes")
# remove_item(list, "pizza")
# update_item(list, "apples", 6)
# print_list(list)

# REFACTORED CODE
def create_list (grocery_string)
 items = grocery_string.split()
 list = Hash.new (1)
 items.each {|item| list[item] = 1}
 return list
end

def add_item(list, item_name, quantity=1)
  list[item_name] = quantity
  return list
end

def remove_item(list, item_name)
  list.delete(item_name)
  return list
end

def update_item(list, item_name, quantity)
  list[item_name] = quantity
  return list
end

def print_list(list)
  puts "My Grocery list"
  list.each do |k, v|
    key = k.capitalize
    puts "#{key} : #{v}"
  end
end

list = create_list("carrots apples cereal pizza")
add_item(list, "Tomatoes")
remove_item(list, "pizza")
update_item(list, "apples", 6)
print_list(list)


# Reflection

# What did you learn about pseudocode from working on this challenge?
# => that it helps a lot, and my pair help me to do a very good job with that!
# What are the tradeoffs of using Arrays and Hashes for this challenge?
# => well we use both, array just for iter it and later on make the hash
# What does a method return?
# => any value we pass after the return keyword, but it shoul return something meaninful
# What kind of things can you pass into methods as arguments?
# => Every kind of variable
# How can you pass information between methods?
# => Using te argument of the method
# What concepts were solidified in this challenge, and what concepts are still confusing?
# => i solidified methods and arguments, and i dont get yet what is a frozen value :)