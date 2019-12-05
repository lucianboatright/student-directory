
@students = []

def student_input(name="_", cohort="_", choice= "_")# defaults set using (name="_")
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  # students = []
  # get first name 
  name = gets.chomp 

  # while name is empty repeat code

  while !name.empty? do
    puts "Which month is your cohort?"  # first in loop as it takes in hobbies set to name given outside loop
    cohort = gets.chomp 
    # add the student hash to the array
    @students << {name: name, cohort: cohort} # added hobbies
    if @students.count == 1
      puts "Now we have #{@students.count} student"
    else
      puts "Now we have #{@students.count} students"
    end
    puts "please enter names"
    # get another name from the user
    name = gets.strip
  end
  # return the array of students
end

def print_header
  puts "The students of Villains Achademy"
  puts "-------------"
end

# students value taken from student_input return value 
# added each_with_index to itereate over print statent adding student index number
def print_names
  count = 0
  if @students.count == 0
    exit
  else
    while count < @students.length
      list = "#{@students[count][:name].center(20)} (#{@students[count][:cohort]} cohort)"
      puts list
      count += 1
    end
  end
end

def print_cohort
  puts "which cohort to view"
  cohort_return = gets.strip
  @students.map do|student| 
    puts "#{student[:name]} (#{student[:cohort]} cohort)".center(20) if student[:cohort] == cohort_return
  end
end

# sort_by_groups.each { |item| puts item}
def print_footer
  # Print total number of students 
  puts "Overall, we have #{@students.count} great students"
end

def print_menu
  # 1. print to menu and ask the user what to do
  puts "1. Input the student"
  puts "2. show the students"
  puts "9. Exit" # beacuse 9 we'll be adding more items  
end

def show_students
  print_header
  print_names
  print_footer
  # input statments 
end

def process(selection)
  case selection
  when "1"
    student_input
  when "2"
    show_students
  when "9"
    exit
  else
    puts "I dont know what you mean, try again"
  end
end

def interactive_menu
  students = []
  loop do
    # # 1. print to menu and ask the user what to do
    # puts "1. Input the student"
    # puts "2. show the students"
    # puts "9. Exit" # beacuse 9 we'll be adding more items
    # 2. read the input and save it into a veariable
    print_menu
    process(gets.chomp)
    # 3. do what the user has asked 
    # case selection
    #   when "1"
    #     students = student_input
    #   when "2"
    #     # print_header
    #     # print_names(students)
    #     # print_footer(students)
    #     # # input statments
    #   when "9"
    #     exit # this will terminate the program
    #   else 
    #     puts "I don't know what you meant, try again"
    #     # 4. repeat from step 1
    # end
  end
end


interactive_menu

# students = student_input
# print_header
# print_names(students)
# print_cohort(students)
# print_footer(students)



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