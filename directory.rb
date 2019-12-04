
# first we print the lsit of students

student_list = [
{name: "Dr. Hanninbal Lecter", cohort: :november},
{name: "Darth Vader", cohort: :november},
{name: "Nurse Ratched", cohort: :november},
{name: "Michael Corleone", cohort: :november},
{name: "Alex DeLarge", cohort: :november},
{name: "The Wicked Witch of the West", cohort: :november},
{name: "Terminator", cohort: :november},
{name: "Freddy Krueger", cohort: :november},
{name: "The Joker", cohort: :november},
{name: "Joffery Baratheon", cohort: :november},
{name: "Norman Bates", cohort: :november}
]

def print_header
  puts "The students of Villains Achademy"
  puts "-------------"
end

def print_names(student_list)
  student_list.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  # Print total number of students 
  puts "Overall, we have #{names.count} great students"
end

print_header
print_names(student_list)
print_footer(student_list)