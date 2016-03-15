# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode
# Die.new
# Input: Array
# Output:Nothig
# Steps:
# Receive the array
  # IF array is empty
    # Raise an argument error
  # ELSE
# store the array in a instance variable

# die.sides
# Input: Array
# Output:Integer with the number of sides in the dice
# Steps:
# count the number of items in the array
# Return the count

# die.roll
# Input: Array
# Output:random item of the array
# Steps:
# Receive the array
# return a random item of it


# Initial Solution

# class Die
#   def initialize(labels)
#     @labels = labels
#     raise ArgumentError.new("An empty die can't be created") if @labels == []
#   end

#   def sides
#     p @labels.count()
#   end

#   def roll
#     p @labels[rand(self.sides)]
#   end
# end

# dice = Die.new([2,3])
# dice.sides
# dice.roll

# Refactored Solution


class Die
  def initialize(labels)
    @labels = labels
    raise ArgumentError.new("An empty die can't be created") if @labels == []
  end

  def sides
    p @labels.count()
  end

  def roll
    p @labels.sample #is not an enumerable but is a method of the array class
  end
end

dice = Die.new([2,3])
dice.sides
dice.roll






# # Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# => In the first one we were using an integer that said to us the ammount of sides, in this one we are geting the posible sides, so in a way is a more flexible software.
# What does this exercise teach you about making code that is easily changeable or modifiable?
# => That is always the best idea to make code this way, otherwise it doesn't make a lot of sense.
# What new methods did you learn when working on this challenge, if any?
# => sample, an array method that gives back a random pick on an array
# What concepts about classes were you able to solidify in this challenge?
# =>  instance variable, and even tough ArgumentError is not a class concepts this exercise help me to solidify it.