# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
 if list_of_words.length == 0
    return nil
  end
#Order the variable
  order_array = []
  longest_word = list_of_words[0]
    list_of_words.each do |x|
      longest_word = x if x.length > longest_word.length
    end
  p longest_word
end
