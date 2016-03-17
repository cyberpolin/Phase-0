# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # start a bingo hash with letter as keys and emty arrays as values
  # start a variable number

  # iter the bingo hash
    # repeat 5 times this block
      # asign a random number between 1 to 100 to given item in the array

  # Return the hash


# Check the called column for the number called.
  # split the stringu
  # start letter variable
  # asign the first part of the split
  # start number variable
  # assign the second part of the split
  # call the hash key that match letter variable
  # check IF there is  a number that match number variable
    # replace that number with X

  #fill in the outline here

# If the number is in the column, replace with an 'x'
  # asign X value to that key, array place

# Display a column to the console
  #iter bingo hash
    # print the key follow by the array of that key

# Display the board to the console (prettify)
  #iter bingo hash
    # print the key follow by the array of that key
# Initial Solution

# class BingoBoard
#   attr_reader :bingo_board, :hash_board # review if qe need this
#   def initialize(board)
#     @bingo_board = board
#     @hash_board = board_to_hash(board)
#   end

#   def board_to_hash(board)
#     bingo_hash = Hash["B",[],"I",[],"N",[],"G",[],"O",[]]
#     bingo_hash.each_with_index {|v,i| bingo_hash[bingo_hash.keys[i]] = bingo_board[i]} # There must be a better way to do this
#     return @bingo_board = bingo_hash
#   end

#   def split_number (number_str)
#     number_splited = [number_str[0],[number_str[1]+number_str[2]]]
#     number_splited
#   end

#   def call_number
#     bingo_array = ["B","I","N","G","O"]
#     number = bingo_array.sample + rand(1..100).to_s
#     return number
#   end

#   def check_number(number_str)
#     number_ary = split_number(number_str)
#     letter = number_ary[0]
#     number = number_ary[1][0].to_i
#     p number
#       @bingo_board[letter].map! do |x|
#         if x == number
#           x = "X"
#         else
#           x = x
#         end
#       end
#     @bingo_board
#   end
#   # In  : column (int)
#   # Out : column (ary)
#   # =============
#   # Iter board_hash
#     # each board_hash array in position[column] add to column_ary
#     # return column_ary
#   # =============
#   def display_column(column)
#     column_ary = []
#     @hash_board.each do |k,v|
#       column_ary << v[column-1]
#     end
#     puts column_ary
#     return column_ary
#   end
#   # In  : board (ary)
#   # Out : Nil
#   # Print : Board
#   # =============
#   # Pseudo Code Here!
#   # =============
#   def display_board(board)
#     board.each do |x|
#       x.each do |i|
#         space = ""
#         space = " " if i.to_s.length == 1
#         print "|#{space}#{i}|"
#       end
#       puts
#     end

#   end
# end


# Refactored Solution

class BingoBoard
  attr_reader :bingo_board, :hash_board # review if qe need this
  def initialize(board)
    @bingo_board = board
    @hash_board = board_to_hash(board)
  end

  def board_to_hash(board)
    bingo_hash = Hash["B",[],"I",[],"N",[],"G",[],"O",[]]
    bingo_hash.each_with_index {|v,i| bingo_hash[bingo_hash.keys[i]] = bingo_board[i]} # Tryed to use inject in order to create a counter and pass index of the array stead of calling hash by its index, which is a dificult thing to read but doesn't work :(
    #bingo_hash.inject(1){|count, x| puts "this is x #{x}, count: #{count}";}
    return @bingo_board = bingo_hash
  end

  def split_number (number_str)
    number_splited = number_str.scan(/\D|\d+/) #REFACTORED
  end

  def call_number
    bingo_array = ["B","I","N","G","O"]
    number = bingo_array.sample + rand(1..100).to_s
    return number
  end

  def check_number(number_str)
    number_ary = split_number(number_str)
    letter = number_ary[0]
    number = number_ary[1].to_i
      @bingo_board[letter].map! do |x|
        if x == number
          x = "X"
        else
          x = x
        end
      end
    @bingo_board
  end
  # In  : column (int)
  # Out : column (ary)
  # =============
  # Iter board_hash
    # each board_hash array in position[column] add to column_ary
    # return column_ary
  # =============
  def display_column(column)
    column_ary = []
    @hash_board.each do |k,v|
      column_ary << v[column-1]
    end
    puts column_ary
    return column_ary
  end
  # In  : board (ary)
  # Out : Nil
  # Print : Board
  # =============
  # Pseudo Code Here!
  # =============
  def display_board(board)
    board.each do |x|
      x.each do |i|
        space = ""
        space = " " if i.to_s.length == 1
        print "|#{space}#{i}|"
      end
      puts
    end

  end
end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.check_number("B71")
new_game.check_number("O83")
new_game.display_board(board)
#Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# => It's ok tough can be improved
# What are the benefits of using a class for this challenge?
# => Every thing is in a better order, and we can tell the methods are action in the class !
# How can you access coordinates in a nested array?
# => Just like that usig the first one for lines and the second one for columns, in the board if i want to get I69 i'll call board[1][1]
# What methods did you use to access and modify the array?
# => each_with_index, i search for something else but didn't find anything :(
# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# => .scan it search for patterns and create an array item every time it finds that pattern, ite help me spliting the bingo number, works with regular expression wich is a pretty nice tool i'm reading about it now.
# How did you determine what should be an instance variable versus a local variable?
# => i use as instance variable somethig has to be accessed from methods in the class, and local variable just variables for anygiven method
# What do you feel is most improved in your refactored solution?
# => Not to much actually i'm having problems with enumerable, and is not understanding it, but is difficult to search something i don't know it exist, i guess i'll practice with one different every day :D
