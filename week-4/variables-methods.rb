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

# Release 2 ending
