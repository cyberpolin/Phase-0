# I worked on this challenge [by myself].


# Your Solution Below

def valid_triangle?(a, b, c)
  values = [a, b, c]
  if a == 0 || b == 0 || c == 0
    return false
  end

  # Identify the grater value index

  greater_side = 0
  greater_side_index = 0

  values.each_with_index do |value, index|
    if value > greater_side
      greater_side = value
      greater_side_index = index
    end
  end

  # sum remaining index values to se if they are greater than greater side
  remaining_values = 0
  values.delete_at(greater_side_index)

  values.each do |x|
    remaining_values += x
  end

  #compare if the remaining sides are greater

    if remaining_values < greater_side
      return false
    end

  return true
end