
@students = []

def print_header
  puts "The students of Villains Achademy"
  puts "-------------"
end

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
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit" # beacuse 9 we'll be adding more items  
end

def push_to_students(name, cohort)
  @students << {name: name, cohort: cohort}
end

def process(selection)
  case selection
  when "1"
    student_input
  when "2"
    show_students
  when "3"
    save_students
  when "4"
    load_students
  when "9"
    exit_button
  else
    puts "I dont know what you mean, try again"
  end
end

def student_input(name="_", cohort="_", choice= "_")# defaults set using (name="_")
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = STDIN.gets.chomp 
  while !name.empty? do
    puts "Which month is your cohort?"  # first in loop as it takes in hobbies set to name given outside loop
    cohort = gets.chomp 
    # add the student hash to the array
    push_to_students(name,cohort) # added hobbies
    single_or_multiple
    puts "please enter names or press enter to exit"
    name = STDIN.gets.strip
  end
end

def show_students
  load_students
  print_header
  print_names
  print_footer
  # input statments 
end

def ask_file_name
  puts "which file would you like to open"
  filename = gets.chomp
end

def save_students
  file = File.open(ask_file_name,"w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
  puts "file saved"
end

def load_students#(filename = "student.csv")
  file = File.open(ask_file_name,"r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(',')
    push_to_students(name, cohort) #### might need to add cohort.to_sym
  end
  file.close
  puts "Students loaded"
end

def exit_button
  exit
end

def file_check
  if File.exists?(filename)
    load_student(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else
    puts "sorry but #{filename} doesn't exist"
    exit_button
  end
end

def try_load_students
  filename = ARGV.first
  return if filename.nil?
  file_check
end

def interactive_menu
  students = []
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end


interactive_menu





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