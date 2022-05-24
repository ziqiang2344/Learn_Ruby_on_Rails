class Student
  attr_accessor :first_name, :last_name, :email, :username, :password #allow both setter and getter function

  def initialize(firstname,lastname,username,email,password)
    @first_name = firstname
    @last_name = lastname
    @email = email
    @username = username
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@Username}, Email address: #{@email}"
  end
end

qiang = Student.new("qiang","lim","qiang123","qiang@example.com","password123")
john = Student.new("john","cena","john123","john@example.com","john123")

puts qiang                       #First name: qiang, Last name: lim,Username: , Email address: qiang@example.com
puts john                        #First name: john, Last name: cena,Username: , Email address: john@example.com
qiang.last_name = john.last_name #First name: qiang, Last name: cena,Username: , Email address: qiang@example.com
puts "qiang is altered"
puts qiang