# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array of Numbers
# Output: Sum of all the numbers in the array
# Steps to solve the problem.

# total eq 0
# Iter Array
  # add array item to total

#return total

# 1. total initial solution
def total(array)
  total = 0
  for x in array
    p x
    total +=x
  end
  p total
end

total([2,3,1,4])
# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of String
# Output: Sum of all strings in the array
# Steps to solve the problem.

# Star a new_sentence as an empty string
# Iter array
#   add array item plus a blank space to new_sentence

# return new_sentence

# 5. sentence_maker initial solution
def sentence_maker(array)
  last = array.length-1
  i = 0
  new_sentence = ""
  for string in array
    separator = " "
    if i == 0
      string = string.capitalize
    elsif i == last
      separator = "."
    end

    new_sentence = new_sentence + string.to_s + separator
    i += 1
  end
  return new_sentence
end


# 6. sentence_maker refactored solution


