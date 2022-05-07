require_relative 'crud_module'

class Student
  # `self` is not required if the module is included in the class
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password
  
  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username},
    Email: #{@email}"
  end
end

qiang = Student.new("Zi Qiang", "Lim", "ziqiang1", "qiang@example.com", "password1")

hashed_password = qiang.create_hash_digest(qiang.password)
puts hashed_password