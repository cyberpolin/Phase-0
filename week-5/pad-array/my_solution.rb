# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# Input: Array, Integer (Optional argument: String)
# What is the output? (i.e. What should the code return?)
# The return should be an array, the integer of the array should be the minimum size of the array.
# The optional argument is the value of which we will fill the empty elements of the array
# What are the steps needed to solve the problem?
# 1) Measure the length of the array
# 2) Compare the length of the array with the 2nd input, which is an integer
# 3) If the integer is larger than the array, we will fill the array / If the integer is smaller than the array, we will have to chunk the array
# 4) Return the array

# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   # Your code here
#   new_array = array
#   x = array.length

#   if x >= min_size ||
#     min_size.times do |x|
#     new_array.push(array[x])
#   end

#     return new_array

#   elsif x <= min_size
#     min_size.times do |x|
#       if array[x] == nil
#         self.push(value)
#       else
#         new_array.push(array[x])
#       end
#     end
#     return new_array
#   end
# end



# def pad(array, min_size, value = nil) #non-destructive
#   new_array = []
#   x = array.length

#   if min_size == 0
#     array.each do |x|
#       new_array << x
#     end
#   return new_array
#   end

# if x >= min_size
#   min_size.times do |x|
#   new_array.push(array[x])
# end
#   return new_array

# elsif x <= min_size
#   min_size.times do |x|
#     if array[x] == nil
#       new_array.push(value)
#     else
#       new_array.push(array[x])
#   end
# end
# array = new_array
#  end
# end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
 # Your code here
 new_array = array
 x = array.length

  def greater?(x, min_size)
  if x >= min_size
    return true
  else
    return false
  end
  end

 if greater?(x, min_size) ||
     min_size.times do |x|
     new_array.push(array[x])
  end
    return new_array

 else
     min_size.times do |x|
      if array[x] == nil
         self.push(value)
      else
         new_array.push(array[x])
      end
  end
    return new_array
  end
end


def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  x = array.length

  return array.dup if min_size == 0

  if greater?(x, min_size)
    min_size.times do |x|
      new_array.push(array[x])
    end
    return new_array
  else
    min_size.times do |x|
      if array[x] == nil
        new_array.push(value)
      else
        new_array.push(array[x])
      end
    end
  array = new_array
  end
end


# 4. Reflection

# Were you successful in breaking the problem down into small steps?
# => Not really, when i was coding i realize i missed some steps :(
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# => As i wrote before, i realize i missed some steps, not a big deal i just code them, but it would be nice not to miss nothing at all, on the other hand passing from pseudo code to code was not as transparent as i spect, may be because i don't know yet a lot of ruby commands.
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# => I only missed to copy the array id the integer was 0, everithing else went smooth. Ooooh and i didn't know how to make a destructive method, but some one in slack help me with that.
# When you refactored, did you find any existing methods in Ruby to clean up your code?
# => yea i use dup.
# How readable is your solution? Did you and your pair choose descriptive variable names?
# => I think so, they are descriptive
# What is the difference between destructive and non-destructive methods in your own words?
# => Destructive replace the value of the object that is calling it, and the other one just return new values.

