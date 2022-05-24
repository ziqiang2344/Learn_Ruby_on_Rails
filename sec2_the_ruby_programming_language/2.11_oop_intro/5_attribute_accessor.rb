class Student
  attr_accessor :first_name, :last_name, :email, :username #allow both setter and getter function
  attr_reader :username #allow getter function only

  @first_name
  @last_name
  @email
  @username
  @password

  def set_username
    @username = "qiang123"
  end

  def to_s
    "First name: #{@first_name}"
  end
end

qiang = Student.new
qiang.first_name = "qiang"
qiang.last_name = "lim"
qiang.email = "qiang@example.com"
puts qiang.first_name #qiang
puts qiang.last_name  #lim
puts qiang.email      #qiang@example.com
puts qiang.username   #qiang123