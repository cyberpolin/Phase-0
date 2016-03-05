# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
  # Your code here
  con_array = []

  array_1.each do |x|
    con_array.push(x)
  end
  array_2.each do |x|
    con_array.push(x)
  end
  return con_array
end
