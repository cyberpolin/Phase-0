# In this challenge, you will make your own method to automatically create accountability groups from a list of names. You'll want to make of the People in your cohort. Try to get everyone into an accountability group of 4 or 5. Be sure everyone is in a group of at least 3 -- It's no fun if someone is in a group by themself or with one other person.

# This is a creative challenge and you can make it as easy or difficult as you would like. Decide what an MVP (Minimum Viable Product) will look like and what the output should be. This is part of the challenge.

# Input: Array of names
# output: Hash of groups
# Steps

#Get the amount of people in the list of names
#divide them in to 5
#IF the modulus of that division is SMALLER THAN 3 THEN
  #divide them in to 4

#save the coeficient of division
#asing the coeficient number of people in to an Array
#delete them from the original Array
#asign that array in to a hash key
# print the array

#CODE!!
#Initial Solution

# def make_groups(array)
# groups = {}
# group_array = []
# total_people = array.length
# counter = 1
# group_counter = 1
# if total_people%5 < 3 && total_people%5 != 0
#   divided_by = 4
# else
#   divided_by =5
# end
# total_groups = total_people/divided_by
# left = total_people%divided_by
# while array.length != 0
#   given_item = rand(array.length)
#   group_array << array[given_item]
#   array.delete_at(given_item)

#   if counter == divided_by || array.length == 0
#     groups["group-"+group_counter.to_s] = group_array
#     counter = 0
#     group_counter +=1
#     group_array = []
#   end
#   counter += 1
# end
# p groups
# end

# Refactoring
# I decide to refactor it before adding changes

def make_groups(array)
groups = {}
group_array = []
total_people = array.length
counter = 1
group_counter = 1
divided_by = divided_by(total_people)
left = total_people%divided_by

while array.length != 0
  given_item = rand(array.length)
  group_array << pop_item(array, given_item)
  if counter == divided_by || array.length == 0
    groups["group-"+group_counter.to_s] = group_array
    counter = 0
    group_counter +=1
    group_array = []
  end
  counter += 1
end
p groups
end

def divided_by(total_people)
  divided_by =5
  if total_people%5 < 3 && total_people%5 != 0
    divided_by = 4
  end
  return divided_by
end
def pop_item(array, item)
  array.delete_at(item)
end

# # Reflection
# What was the most interesting and most difficult part of this challenge?
# => I got confused dividing the groups on the fly
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# => Yes but not quite in my best shape
# Was your approach for automating this task a good solution? What could have made it even better?
# => i beleive i could balance the load better
# What data structure did you decide to store the accountability groups in and why?
# => Hash, because i have there the name of the group and the names of the people
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# => Not new methods, but i learn how important dividing my code in to other methods help

make_groups(["carlos","carlos","carlos","carlos", "shaun", "mila", "bill", "katy", "laura", "Victoria", "Victoria"])