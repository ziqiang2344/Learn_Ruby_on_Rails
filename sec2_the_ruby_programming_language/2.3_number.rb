# Numbers
puts 1 + 2       #3
puts 2 - 1       #1
puts 10 * 2      #20
puts 10 / 4      #2
puts 10.0 / 4    #2.5
puts 10 / 4.0    #2.5
puts 10 / 4.to_f #2.5
puts (10/4).to_f #2.0

# Assign variables
x = 5
y = 10
puts y / x #2
puts y % x #0

# Numbers vs String Concatenation
# "5" * "5"  //no implicit conversion of String into Integer
puts "5" * 2  #55
#2 * "5"     //String can't be coerced into Integer
#Note: A string can be multiplied by a number but a number can't multiplied by a string
puts "-" * 20 #--------------------

#Using method
20.times{ print "-"}       #--------------------
20.times{ puts rand(10)}   #generates 20 random numbers between 0 and 9
puts rand                       #generates random number between 0 and 1
puts rand(100)                   #generates number in between 0 and 99

#String to numbers
x = "5".to_i
puts x        #5
puts x.to_f   #5.0

#Convert a string that can't be converted into a number
puts "hello".to_i #0
puts "hello".to_f #0.00

#Methods
puts 22.odd?  #false
puts 22.even? #true

#Comparisons
a = 'a'
b = 'b'
puts a==b #false
puts 5<2  #false
puts 2<=5 #true
puts 5>2  #true
puts "hello" != "bye" #true
#comparing types
puts 10.eql?(10.0)    #false

#Homework Solution: Working with numbers - Analyzer
puts "Simple calculator"
20.times { print "-" }
puts
puts "Please enter your first number"
first_number = gets.chomp
puts "Please enter your second number"
second_number = gets.chomp
puts "The first number multiplied by the second number is: #{first_number.to_f * second_number.to_f}"
puts "The first number divided by the second number is: #{first_number.to_f / second_number.to_f}"
puts "The first number subtracted from the second number is: #{second_number.to_f - first_number.to_f}"
puts "The first number added to the second number is: #{second_number.to_f + first_number.to_f}"
puts "The first number mod the second number is: #{first_number.to_f % second_number.to_f}"