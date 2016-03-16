#Attr Methods

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

# Pseudocode

# Input:None
# Output:Greeting
# Steps:
# Let name variable to be accesed
# Start the instance
  # Asign "Carlos" to name variable

# Class Grettings
  #Greetings#inizialize
    #asign to @name variable the instance of NameData class
#Greetings#hello
  #Print the method name on Name Data Instance

  #NOTE IT WAS SO DIFICULT TO DO  A PSEDUOCODE...



class NameData
  attr_reader :name
  def initialize()
    @name = "Carlos"
  end
end


class Greetings
  def initialize
    @name = NameData.new
  end
  def hello
  puts "Hello #{@name.name}! How wonderful to see you today."
  end
end



greet = Greetings.new
greet.hello # puts "Hello Student! How wonderful to see you today."

# Reflection
# What is a reader method?
# => a method that return the value of a varible

# What is a writer method?
# => A method that chages the value of a variable
# What do the attr methods do for you?
# => is like a shortcut for a writer method or a reader method, besides is easier to read.
# Should you always use an accessor to cover your bases? Why or why not?
# => No, because there is data we don't want to be edited outside the instance of the class.
# What is confusing to you about these methods?
# => The real meaning of the simbol we use to refer the instance variable.

# Release 1
# What are these methods doing?
# # => The ones with a = sign they are like every method what changes is the name that have an = sign at the end, but also when ruby see that sing on a method name it abilitates the sugar syntax which means you can pass information whit.
#instance_of_profile.change_my_name = "Taylor"
# stead of
# instance_of_profile.change_my_name("Taylor")
# And the method it self just reasign the instance variable value to whatever the user pass on.

# How are they modifying or returning the value of instance variables?
# => by assigning the parameter variable to the instance variable.

# Release 2
# What changed between the last release and this release?
# => the use of attr_reader.
# What was replaced?
# => The what_is_age method
# Is this code simpler than the last?
# => Is not just simpler is easier to read and much more strait forward.

#Release 3
# What changed between the last release and this release?
#we use the attr_writer
# What was replaced?
# => # def change_my_age=(new_age)
# Is this code
#simpler than the last?
# => Of course the same as the past one, is easier to read and a better practice