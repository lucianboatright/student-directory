
def student_input
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get first name 
  name = gets.chomp
  # while name is empty repeat code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Achademy"
  puts "-------------"
end

# students value taken from student_input return value 
# added each_with_index to itereate over print statent adding student index number
def print_names(students)
  students.each_with_index do |student,number|
    if student[:name].split(//).length < 12
      puts "#{number} #{student[:name]} (#{student[:cohort]} cohort)"
    end

  end
end


def print_footer(names)
  # Print total number of students 
  puts "Overall, we have #{names.count} great students"
end

students = student_input
print_header
print_names(students)
print_footer(students)



##### VERSION 1
# def student_input 
#   puts "Please enter the names of the students"
#   puts "To finish, just hit return twice"
#   # create an empty array
#   students = []
#   # get first name 
#   name = gets.chomp
#   # while name is empty repeat code
#   while !name.empty? do
#     # add the student hash to the array
#     students << {name: name, cohort: :november}
#     puts "Now we haveve #{students.count} students"
#     # get another name from the user
#     name = gets.chomp
#   end
#   # return the array of students
#   students
# end

# def print_header
#   puts "The students of Villains Achademy"
#   puts "-------------"
# end

# # students value taken from student_input return value 
# def print_names(students)
#   students.each do |student|
#     puts "#{student[:name]} (#{student[:cohort]} cohort)"
#   end
# end

# def print_footer(names)
#   # Print total number of students 
#   puts "Overall, we have #{names.count} great students"
# end





## Old values held in arrays
# student_list = [
# {name: "Dr. Hanninbal Lecter", cohort: :november},
# {name: "Darth Vader", cohort: :november},
# {name: "Nurse Ratched", cohort: :november},
# {name: "Michael Corleone", cohort: :november},
# {name: "Alex DeLarge", cohort: :november},
# {name: "The Wicked Witch of the West", cohort: :november},
# {name: "Terminator", cohort: :november},
# {name: "Freddy Krueger", cohort: :november},
# {name: "The Joker", cohort: :november},
# {name: "Joffery Baratheon", cohort: :november},
# {name: "Norman Bates", cohort: :november}
# ]