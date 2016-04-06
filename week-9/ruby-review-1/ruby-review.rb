# [100,100,100,0,100] names Alex
# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(args)   #Use named arguments!
    @first_name= args[:first_name]
    @scores= args[:scores]
  end

  # average method
  def average()
    sum = 0
    @scores.each do |x|
      sum += x
    end
    average = sum/@scores.length
    return average
  end

  # letter_grade method
  def letter_grade()
    average
    if average >= 90
      letter = "A"
    elsif average >= 80
      letter = "B"
    elsif average >= 70
      letter = "C"
    elsif average >= 60
      letter = "D"
    else
      letter = "F"
    end
    return letter
  end
end #ends the class


def linear_search(array,first_name)
  array.each_with_index do |student, i|
    if student.first_name == first_name
      return i
    end
  end
    return-1
end

  def binary_search(array, first_name)
    students_hash = {}
    names_array = []

    array.each_with_index do |student, index|
      students_hash[student.first_name] = index
      names_array.push(student.first_name)
    end #ending the do

    names_array.sort!
    half = names_array.length/2
    p names_array

    if first_name < names_array[half]
      index = 0
      (0..half).each do |x|
        puts "first name:#{first_name}, name in array: #{names_array[index]}"
        if first_name == names_array[index]
          return students_hash[names_array[index]]
        else
          return -1
        end #ending sub if #1
        index += 1
      end # end each
    else #else from original if
      index=0
      (half..-1).each do |x|
        #puts "first name:#{first_name}, name in array: #{names_array[index]}"
        if first_name == names_array[index]
          return students_hash[names_array[index]]
        else
          return -1
        end #ending sub if #1
        index += 1
      end # end each

    end # end if
  end





alex=Student.new({first_name: "Alex",
                 scores:[100,100,100,0,100]})
tom=Student.new({first_name: "Tom",
                 scores:[10,50,60,100,80]})
betty=Student.new({first_name: "Betty",
                 scores:[50,100,80,70,80]})
susan=Student.new({first_name: "Susan",
                 scores:[80,60,90,90,100]})
frank=Student.new({first_name: "Frank",
                 scores:[70,100,100,88,65]})

students=[alex, tom, betty, susan, frank]

# Code Test


# p students[0].average() #80
# p linear_search(students, "Alex")
# binary_search(students, "Alex")


# Refactored Solution


class Student
  attr_accessor :scores, :first_name

  def initialize(args)   #Use named arguments!
    @first_name= args[:first_name]
    @scores= args[:scores]
  end

  def average()
    return @scores.inject(:+) / @scores.length
  end

  # letter_grade method
  def letter_grade()
    if average >= 90
      letter = "A"
    elsif average >= 80
      letter = "B"
    elsif average >= 70
      letter = "C"
    elsif average >= 60
      letter = "D"
    else
      letter = "F"
    end
    return letter
    end
  end #ends the class


def linear_search(array,first_name)
  array.each_with_index do |student, i|
    if student.first_name == first_name
      return i
    end
  end
    return-1
end

  def binary_search(array, first_name)
    students_hash = {}
    names_array = []

    array.each_with_index do |student, index|
      students_hash[student.first_name] = index
      names_array.push(student.first_name)
    end

    names_array.sort!
    half = names_array.length/2
    p names_array

    if first_name < names_array[half]
      index = 0
      (0..half).each do |x|

        if first_name == names_array[index]
          return students_hash[names_array[index]]
        else
          return -1
        end
        index += 1
      end
    else
      index=0
      (half..-1).each do |x|

        if first_name == names_array[index]
          return students_hash[names_array[index]]
        else
          return -1
        end
        index += 1
      end
    end
  end





alex=Student.new({first_name: "Alex",
                 scores:[100,100,100,0,100]})
tom=Student.new({first_name: "Tom",
                 scores:[10,50,60,100,80]})
betty=Student.new({first_name: "Betty",
                 scores:[50,100,80,70,80]})
susan=Student.new({first_name: "Susan",
                 scores:[80,60,90,90,100]})
frank=Student.new({first_name: "Frank",
                 scores:[70,100,100,88,65]})

students=[alex, tom, betty, susan, frank]









# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1

#binary search test
p binary_search(students, "Alex") ==0
