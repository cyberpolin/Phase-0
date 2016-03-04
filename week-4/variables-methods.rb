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
# => You just do it, the local variable is the easiest one to declare and use

# How do you define a method?
# => by typing def followed by the name of the method, then add at end. Everything in between is the block that will execute when we call the method.
#    A method can have parameters or not, this last ones are declared between parethesis, or arfet the name of the method.

# What is the difference between a local variable and a method?
# => One is a variable, and the other is a way of asigning a label to a block of code, a method can have variables inside it self, and a variable can hold the result of a method.

# How do you run a ruby program from the command line?
# => ruby name_of_the_program.rb

# How do you run an RSpec file from the command line?
# => rspec name_of_the_spec_file.rb

# What was confusing about this material? What made sense?
# => the operators beeing methods, and the self object, everything else was perfect

# Add a link to each exercise solution file as well so your peers can easily look at your code.
# =>

