# Release 2
# 5.6 A Few Things to Try
# • Full name greeting. Write a program that asks for a person’s first name, then middle, and then last. Finally, it should greet the person using their full name.
# • Bigger, better favorite number. Write a program that asks for a person’s favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better favorite number. (Do be tactful about it, though.)
class Variables
  def greeting()
    puts "What's your name?"
    name = gets.chomp
    puts "What's your middle name? (if you don't have one just press enter"
    middle_name = gets.chomp
    puts "What's your last name?"
    last_name = gets.chomp

    p "Greetings #{name} #{middle_name} #{last_name}"
  end
  def bigger_better()
    number = ask_number()
    p "You give me #{number}, but i have #{number+1}, sorry you loooooooooooose!!!"
  end
  def ask_number()
    puts "Lets play a game, give me a number..."
    number = gets.chomp
    if number == ""
      print "That's not a number so... "
      ask_number()
    end
    number = number.to_i
    number
  end
end

greet = Variables.new

greet.greeting()
greet.bigger_better()

# How do you define a local variable?
# => You just do it, the local variable is the easiest one to declare and use, the scope of this one is just the current file, or method.
#    A good practice is to declare them in a way that just reading you know what's in it, also is a good practice to write spaces with underscore, for example last name variable would be last_name.
 # last_name = "Gonzalez"

# How do you define a method?
# => by typing def followed by the name of the method, then add at end. Everything in between is the block that will execute when we call the method.
#    A method can have parameters or not, this last ones are declared between parethesis, or arfet the name of the method.

# def my_method()   #you can ignore the parenthesis but i think is a good practice to use them
# return "I'm a method" #on the las line in the methos you don't need to use the return keyword
# end

# What is the difference between a local variable and a method?
# => One is a variable, and the other is a way of asigning a label to a block of code, a method can have variables inside it self, and a variable can hold the result of a method.

# How do you run a ruby program from the command line?
# => ruby name_of_the_program.rb
# => you even can run a program directly from command line like this...
# ruby -e 'print "you see? a command line program"'
# => You also can check syntax with ruby -cw name_of_the_program.rb #The w is just to add warnings

# How do you run an RSpec file from the command line?
# => rspec name_of_the_spec_file.rb

# What was confusing about this material? What made sense?
# => the operators beeing methods, and the self object, everything else was perfect

# Add a link to each exercise solution file as well so your peers can easily look at your code.
# =>
#https://github.com/cyberpolin/Phase-0/tree/master/week-4/address
#https://github.com/cyberpolin/Phase-0/blob/master/week-4/math/my_solution.rb

