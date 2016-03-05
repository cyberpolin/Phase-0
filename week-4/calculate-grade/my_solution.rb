def get_grade(num)
  case
  when num >= 90 then grade = "A"
  when num >= 80 then grade = "B"
  when num >= 70 then grade = "C"
  when num >= 60 then grade = "D"
  when num < 60 then grade = "F"
  end
  return grade
end