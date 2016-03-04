# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => error.rb
# 2. What is the line number where the error occurs?
# => 170
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error
# => expecting keyword end
#
# 5. Where is the error in the code?
# => It was on line 170 at the end, but it was expecting the end of the method
# 6. Why did the interpreter give you this error?
# => i didn't close the def declaration

# --- error -------------------------------------------------------

south_park = 0

# 1. What is the line number where the error occurs?
# => 37
# 2. What is the type of error message?
# => undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# => Doesn't give any except for object name error
# 4. Where is the error in the code?
# => After south_park, it wasn't declare as a variable nor a method
# 5. Why did the interpreter give you this error?
# => it didn't recognize south_park as anything, so it didn't know how to treat it.

# --- error -------------------------------------------------------
def cartman()
  nil
end
cartman()

# 1. What is the line number where the error occurs?
# => 52
# 2. What is the type of error message?
# => undefined method
# 3. What additional information does the interpreter provide about this type of error?
# => give us the name of the undefined method
# 4. Where is the error in the code?
# => just when the method gets called
# 5. Why did the interpreter give you this error?
# => because the method wasn't declared before we call it on the code

# --- error -------------------------------------------------------

def cartmans_phrase(message)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 69
# 2. What is the type of error message?
# => wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# => It give us the number of arguments used and the number declared
# 4. Where is the error in the code?
# => Line 69 just when we declare the method
# 5. Why did the interpreter give you this error?
# => when we call the method we are giving it one parameter, but when we declare it we didn't expect any argument

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("Screw you Errors")

# 1. What is the line number where the error occurs?
# => 88
# 2. What is the type of error message?
# => Wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# => It tell us the amount of arguments we passed and the amount we are specting
# 4. Where is the error in the code?
#On line 92 we were calling a method that needs an argument with no argument at all
# 5. Why did the interpreter give you this error?
#We needed to pass an argument, and no one was passed



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', "Carlos")

# 1. What is the line number where the error occurs?
# => 109
# 2. What is the type of error message?
# => wrong numer of argument
# 3. What additional information does the interpreter provide about this type of error?
# => The number of arguments passed and expected
# 4. Where is the error in the code?
# => On line 113
# 5. Why did the interpreter give you this error?
# => The method expected 2 arguments, and only get one

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# => 128
# 2. What is the type of error message?
# => String can't be coerced into Fixnum
# 3. What additional information does the interpreter provide about this type of error?
# Type Error
# 4. Where is the error in the code?
# => When we cant tu multiply
# 5. Why did the interpreter give you this error?
# => We can multiply string by any number of times, but not the other way arround

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/2


# 1. What is the line number where the error occurs?
# => 143
# 2. What is the type of error message?
#divided by serp
# 3. What additional information does the interpreter provide about this type of error?
# => ZeroDivisionError
# 4. Where is the error in the code?
# We are trying to divide by zero
# 5. Why did the interpreter give you this error?
# => you can't divide any number by zero, it's just not posible

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#159
# 2. What is the type of error message?
#cannot load such file
# 3. What additional information does the interpreter provide about this type of error?
# The were the file supposed to be
# 4. Where is the error in the code?
# In trying to load a file it doesn't exist or is not in the rigth path
# 5. Why did the interpreter give you this error?
# Because it didn't find the file we ask for it to load


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
# => The first one, because it tell me a diferent line, and the error was at the begining of the file.
# How did you figure out what the issue with the error was?
# => I just started to comment everything until the program ran without any error, then i realize it was an end missing
# Were you able to determine why each error message happened based on the code?
# => when i looked for it at the given line error, and i made the "run" over my head
# When you encounter errors in your future code, what process will you follow to help you debug?
# To start in the line, and then look for the type of error.