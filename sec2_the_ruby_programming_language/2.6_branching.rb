puts "Simple calculator"
20.times { print "-" }
puts
puts "Please enter your first number"
first_number = gets.chomp
puts "Please enter your second number"
second_number = gets.chomp
puts "What do you want to do?"
puts "Enter 1 for multiply, 2 for addition, 3 for subtraction"

user_entry = gets.chomp
if user_entry == "1"
  puts "You have chosen to multiply"
elsif user_entry == "2"
  puts "You have chosen to add"
elsif user_entry == "3"
  puts "You have chosen to subtract"
else
  puts "Invalid entry"
end