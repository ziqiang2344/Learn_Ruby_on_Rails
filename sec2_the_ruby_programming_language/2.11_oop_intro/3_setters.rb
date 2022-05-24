class Student
  @first_name
  @last_name
  @email
  @username
  @password

  def first_name=(name) #getter function
    @first_name = name
  end

  def to_s
    "First name: #{@first_name}"
  end
end

qiang = Student.new
qiang.first_name = "qiang"
puts qiang #First name: qiang