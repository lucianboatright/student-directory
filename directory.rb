
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
puts "The students of Villains Achademy"
puts "-------------"

student_list.each do |student|
  puts student
end

# Print total number of students 
puts "Overall, we have #{student_list.count} great students"