# Smallest Integer

# I worked on this challenge [by myself].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
  # Your code goes here!
  if list_of_nums.length == 0
    return nil
  end
#Order the variable
  order_array = []
  greates_num = list_of_nums[0]
    list_of_nums.each do |x|
      greates_num = x if x < greates_num
    end
  p greates_num
end
array = (1..10).to_a.shuffle
smallest_integer array