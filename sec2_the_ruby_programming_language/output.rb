#Section 2.1
#Introduction to Section 2 and Ruby

#printing Hello World
puts "Hello World"

p "Hello World"

print "Hello World"

#Difference between puts, p & print
# puts - print the statement and move to next line
# p - print the whole statement with " " and move to the next line
# print - print the statement but not moving next line

#To use 'print' with next line
print "Hello World \n"

#----------------------------------------------------------------------

#creating variable
greeting = "Hello World"

puts greeting

#----------------------------------------------------------------------

#defining a method
def say_hello
    puts "Hello World"
end

#calling the method
say_hello

#----------------------------------------------------------------------

#defining a method that takes argument
def say_hello(things_to_say)
    puts things_to_say
end

say_hello "Hello Zi Qiang"

