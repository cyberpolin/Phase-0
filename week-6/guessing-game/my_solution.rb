# Build a simple guessing game


# I worked on this challenge [by myself ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:Integer
# Output: Symbol (:low, :high, :correct)
# Steps:

# GuessingGame.new
# Start a solved instance variable with false
# save the Integer value in to an instance variable

# GuessingGame#solved
#   return solved instance variable

# GuessingGame#guess
#   IF argunent of guess is equal to integer value
#     change solved value to true
#     return :correct
#   ELSE IF argumwnt of guess is greater THAN integer value
#     return :high
#   ElSE IF argument of guess is smaller THAN integer value
#     return :low


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     # Your initialization code goes here
#     @answer = answer
#     @solved = false
#   end

#   # Make sure you define the other required methods, too
#   def solved?
#     return @solved
#   end

#   def guess(guess_number)
#     if @answer == guess_number
#       @solved = true
#       return :correct
#     elsif guess_number > @answer
#       @solved = false
#       return :high
#     end
#     @solved = false
#     return :low

#   end

# end


# Refactored Solution
#Couldn't find something to do here, i tried to create a toggle_solved method and call it when ever a guess but it didn't work as i spected. And it seems to me making a method to repeat an if i allready have there would be a bad think to do.

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
    @solved = false
  end

  # Make sure you define the other required methods, too
  def solved?
    p @solved
  end

  def guess(guess_number)
    if @answer == guess_number
      @solved = true
      p :correct
    elsif guess_number > @answer
      @solved = false
      p :high
    else
      @solved = false
      p :low
    end
  end
end



# # Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# =>  Wow... Ok lets supose we have a school, and we make an instance variable of the amount of students, because it will be silly count them every time we want to know that data, so we need that information to be accesible from everywere in that school that way whenever admission accept a student they can add him to tha @amount_students variable, and in the same way if marketing want to know how many students the school have he could do it.

# When should you use instance variables? What do they do for you?
# => When you want the methods in your instance of a class access the information in that variable.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# => Well is just about taking decisions based on certains rules, i didn't have any trouble at all
# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# => I guess because every string we return it's going to convert in a symbol, and every string is a diferent symbol, if we use symbols we are saving machine resources, from procesing, which is done when converting from string to symbol, and memory that is done by saving every single string into diferent symbol.