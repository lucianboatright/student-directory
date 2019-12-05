
def student_input(name="_", cohort="_", choice= "_")# defaults set using (name="_")
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get first name 
  name = gets.chomp 

  # while name is empty repeat code
  while !name.empty? do

    puts "Which month is your cohort?"  # first in loop as it takes in hobbies set to name given outside loop
    cohort = gets.chomp 
    # add the student hash to the array
    students << {name: name, cohort: cohort} # added hobbies
    if students.count == 1
      puts "Now we have #{students.count} student"
    else
      puts "Now we have #{students.count} students"
    end
    puts "please enter names"
    # get another name from the user
    name = gets.strip
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

  #   students.each do |student|
#   puts "#{student[:name]} (#{student[:cohort]} cohort)"
#   end
  # cohort = ["jan","feb","mar","apr","may","june","july","oct","nov","dec"]
  count = 0
  while count < students.length
    list = "#{students[count][:name].center(20)} (#{students[count][:cohort]} cohort)"
    puts list
    count += 1
  end
end

def print_cohort(students)
  puts "which cohort to view"
  cohort_return = gets.strip
  # sort_by = []
  students.map do|student| 
    puts "#{student[:name]} (#{student[:cohort]} cohort)".center(20) if student[:cohort] == cohort_return
  end

end




# sort_by_groups.each { |item| puts item}
def print_footer(names)
  # Print total number of students 
  puts "Overall, we have #{names.count} great students"
end

students = student_input
print_header
print_names(students)
print_cohort(students)
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