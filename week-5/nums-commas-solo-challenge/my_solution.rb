# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? Positive integer
# What is the output? That integer separated by commas and converted to string
# What are the steps needed to solve the problem?
# Convert the integer in to string
# Save it on a new variable
# iter that string
#   create a new string
#   add each string iteration value to the new string
#   #if iteration is the third add a comma, and the string iteration value

# return the new string

# 1. Initial Solution
# def separate_comma(integer)
#   str_integer = integer.to_s
#   str_size = str_integer.length
#   new_str_integer = ""
#   str_size.times{ |i|
#     minus_i = (i+1)*-1
#     new_str_integer += str_integer[minus_i]
#     if (i+1)%3 == 0
#        new_str_integer += ","
#     end
#   }

#   no_reverse_string = ""
#   new_str_size = new_str_integer.length
#   new_str_size.times{|i|
#     minus_i = (i+1)*-1
#     p minus_i
#     if minus_i == -1 && new_str_integer[minus_i] == ","

#     else
#       no_reverse_string += new_str_integer[minus_i]
#     end
#   }
#   return no_reverse_string

# end

# 2. Refactored Solution

def separate_comma(integer)
  str_integer = integer.to_s
  str_integer.reverse!
  new_array = []
  counter = 0
  #array_integer = str_integer.split(/(\d{3})/) # I tried to split them every 3 digits and then join with comma but could'nt do it :( i guess i need to learn about regex
  array_integer = str_integer.split(//)
  array_integer.each do |x|

    if counter%3 ==0
      new_array.unshift(",")
    end
      new_array.unshift(x)
    counter += 1
  end
  new_array.pop if new_array[-1] == ","
  return new_array.join()
end


# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?
# => The first idea was to make groups of 3 digits, and add them into an array that to join the array with commas, but because i shouldn't use split or join i guess i could do step by step. For that i needed to iter the string, and add a comma every 3 steps.

# Was your pseudocode effective in helping you build a successful initial solution?
# => Yeah, but i had to make extra steps when i was coding, it seems i do not considered that i needed to reverse the string, i guess is part of the procces
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# => I use reverse, split and join, they make the code a lot shorter and cleaner, the documentation was ok but the best part are the examples.
# How did you initially iterate through the data structure?
# => jajaja yeah, aparently i do that a lot, but i'm not sure is a good practice, tough i guess that's the way ruby methods like reverse work to.
# Do you feel your refactored solution is more readable than your initial solution? Why?
# => Yes of course, but i am also sure it could be better.