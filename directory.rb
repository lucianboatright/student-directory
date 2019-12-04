
# first we print the lsit of students

student_list = [
"Dr. Hanninbal Lecter",
"Darth Vader",
"Nurse Ratched",
"Michael Corleone",
"Alex DeLarge",
"The Wicked Witch of the West",
"Terminator",
"Freddy Krueger",
"The Joker",
"Joffery Baratheon",
"Norman Bates"
]

def print_header
  puts "The students of Villains Achademy"
  puts "-------------"
end

def print_names(names)
  names.each do |student|
    puts student
  end
end

def print_footer(names)
  # Print total number of students 
  puts "Overall, we have #{names.count} great students"
end

print_header
print_names(student_list)
print_footer(student_list)