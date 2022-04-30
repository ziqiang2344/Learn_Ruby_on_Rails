def multiply(first, second)
  #the last line of the function is automatically returned by the function
  first.to_f * second.to_f
end

def divide(first, second)
  first.to_f / second.to_f
end

def subtract(first, second)
  first.to_f - second.to_f
end

def add(first, second)
  first.to_f - second.to_f
end

def mod(first, second)
  first.to_f % second.to_f
end

puts "Simple Calculator"
20.times{print "-" }
puts "Enter your first number"
first = gets.chomp
puts "Enter your second number"
second = gets.chomp
puts "Multiplication is: #{multiply(first, second)}"
puts "Division is: #{divide(first, second)}"
puts "Subtraction is: #{subtract(first, second)}"
puts "Addition is: #{add(first, second)}"
puts "Modulus is: #{mod(first, second)}"