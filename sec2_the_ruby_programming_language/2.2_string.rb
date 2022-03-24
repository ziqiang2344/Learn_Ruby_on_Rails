#Strings Part 1 and Part 2

#String concatenation

first_name = "Zi Qiang"
last_name = "Lim"
full_name = first_name + " " + last_name 
puts full_name

#String interpolation
#Note: Single quote cannot be used in string interpolation
puts "My first name is #{first_name} and my last_name is #{last_name}" #will print Zi Qiang as first name and Lim as last name
puts 'My first name is #{first_name} and my last_name is #{last_name}' # will print #{first_name} as first name and #{last_name} as last name instead

#Using methods
puts full_name.class #String
#puts fullname.methods #check mehtods available for class type by default
puts 10.class        #Integer
#Method chaining(converting a 10 to a string)
puts 10.to_s.class   #String  

puts full_name.length       #12
puts full_name.reverse      #miL gnaiQ iZ
puts full_name.capitalize   #Zi qiang lim
puts full_name.empty?       #false
puts "".empty?              #true
puts "".nil?                #false
puts nil.nil?               #true

#sub vs gsub
puts sentence = "Welcome to the jungle"     #Welcome to the jungle
#sub replace single word
puts sentence.sub("the jungle","utopia")    #Welcome to utopia
#Note: gsub replace all of the word in the paragraph
puts sentence.gsub("the jungle","utopia")   #Welcome to utopia

#Variable assignment
new_first_name = first_name 
puts new_first_name #Zi Qiang

first_name = "John" #reassigning first_name to John
puts first_name #John

#Escaping
puts 'the new first name is #{new_first_name}'          #the new first name is #{new_first_name}
puts "the new ifrst name is \#{new_first_name}"         #the new ifrst name is #{new_first_name}
puts 'Zi Qiang asked \'Hey John, how are you doing?\''  #Zi Qiang asked 'Hey John, how are you doing?'

#Input
puts "What is your first name?"
puts "Your first name is #{first_name}"
puts "Enter a number to multiply by 2"

input = gets.chomp #input is a string in this case
puts input * 2 #55
puts input.to_i * 2 #10

#Extra note: to comment the whole thing: Highlight the part -> ctrl + / (same goes to uncomment)


#Homework Solution: Analyzer Program code
puts "Enter your first name"
first_name = gets.chomp
puts "Enter your last name"
last_name = gets.chomp

full_name = first_name + " " + last_name
reversed_name = full_name.reverse
name_len = full_name.length

puts "Your full name is #{full_name}"
puts "Your full name reversed is #{reversed_name}"
puts "Your name has #{name_len} characters in it" 