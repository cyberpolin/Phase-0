# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? an array
# create new array
# create a new hash with number as key => frequency of number as its value
#
# start counter and loop
# assign variable to first value in array [0]
#
# iterate over array to compare if numbers in array match new variable
#   if they match, + 1 to value of key number
#       add key=>value pairs to hash
#   if key in hash = new key, do not add to hash <
#
# compare hash values to find largest number
# add largest number to new array and return
#
# What is the output? an array
#What are the steps needed to solve the problem?


# 1. Initial Solution


# def mode(array)
#     new_array = []
#     new_hash = {} #Use number as key


#     array.each do |thing|
#         counter = 0 # NOT USE
#         array.each do |x|
#             if x == thing
#                 counter += 1
#                 new_hash[x] = counter
#             end
#         end
#     end
#     puts new_hash
#     #{1=>2, 2=>2, 3=>3}
#     value_location = new_hash.keys[0] #2
#     greatest_count = 0
#     p new_hash

#     new_hash.each do |key, value|
#         if value >= greatest_count  #2
#             greatest_count = value
#             value_location = key
#         end
#         puts "key is #{key}, value is #{value}, value_location is #{value_location}, greatest_count is #{greatest_count}"
#     end
#     #new_array << value_location

#     # Is not the best way but it will work
#     new_hash.each do |key, value|
#         if greatest_count == value
#             new_array << key
#         end
#     end
#     p new_array
# end
# # {2=>1, 1=>2, 3=>1}
# mode(["cats", "cats", "cats", "mangoes", "mangoes", "mangoes"])

# 3. Refactored Solution

# Take an array find how many times each item is repeated
# find the max number
# return the most repeated item in array form


def mode(array)

  hash = Hash[array.map {|x| [x, array.count(x)]}]
  new_array = []
  most_repeated_item = array.max_by{|x| array.count(x)}
  more_frequent =  array.count(most_repeated_item)

  hash.map{|k,v| new_array << k if v == more_frequent}
  p new_array


end


# 4. Reflection

# Which data structure did you and your pair decide to implement and why?
# => Hash, because we will have there both the name of the item and the frequency :)
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# => yes even tough i need to keep practicing
# What issues/successes did you run into when translating your pseudocode to code?
# => We didn't realize the complexity of separing the info without loosing track of were it came from.
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# => count, map, max_by, yes they were difficult even now i think they would be hard still.