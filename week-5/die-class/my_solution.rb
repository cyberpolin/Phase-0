# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:Integer
# Output:Integer
# Steps:
# Initialize
# => IF sides less or than one
  # => Raise an error

# Sides
# => Return sides variable

# roll
  # => renturn the random of the range from 1 to sides value


# 1. Initial Solution

class Die
  def initialize(sides)
    # code goes here
    @sides = sides
    if @sides < 1
      raise ArgumentError.new("You have to give me at leat 1 side, you gave #{@sides} sides")
    end
  end

  def sides
    return @sides# code goes here
  end

  def roll
    # code goes here
    return rand(1..@sides)
  end
end

# 3. Refactored Solution


class Die
  def initialize(sides)
    # code goes here
    @sides = sides
    if @sides < 1
      raise ArgumentError.new("You have to give me at leat 1 side, you gave #{@sides} sides")
    end
  end

  def sides
    return @sides# code goes here
  end

  def roll
    # code goes here
    return rand(1..@sides)
  end
end





# 4. Reflection
# What is an ArgumentError and why would you use one?
# => Is when the argument passed to a method or class have a wrong number of argument, or type, even an undesired value.
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# => I use rand to get a random number, a challenge i  had was it was returning me an 0 which should be impossible to receive, but i solve it reading the docs!
# What is a Ruby class?
# => I like a basic copy of something, this can be initialized in to an instance, which would be and new object itself. A class is like a blueprint, and an instance is like the actual building, it can be improved by adding methods, so in this way we have a basic building and we can add whatever we want.
# Why would you use a Ruby class?
# => I guess two reasons, one id because we don't want to write every method for a new instance if we can have it in a class, and the second is because it is a nice way to organize your code into an object oriented paradigm.
# => This last idea is based on thinking that everything is an object, like #in real life every object has ways of doing something, those are methods.
# What is the difference between a local variable and an instance variable?
# => A local variable can be accessed in the method it has been created, but an instance variable can be accessed everywhere in an instance, that means the class has to be instantiated and the instance variable won't share information between other instances of that class.
# Where can an instance variable be used?
# => They are good to share information between methods on a same instance, that means an instantiated class.