#Introduction to Object Oriented Programming
class User
  attr_accessor :name, :email
  def initialize(name,email)
    @name = name
    @email = email
  end

  def run
    puts "Hey I'm running"
  end
  #The instance of the user is not needed to run this class method
  def self.identify_yourself
    puts "Hey I am a class method"
  end
end

user = User.new("ziqiang", "ziqiang@example.com")
user.run                   #Hey I'm running
User.identify_yourself     #Hey I am a class method