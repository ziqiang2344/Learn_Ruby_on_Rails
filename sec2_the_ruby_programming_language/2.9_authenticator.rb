users = [
    {username: "mashrur", password: "password1"},
    {username: "jack", password: "password2"},
    {username: "arya", password: "password3"},
    {username: "jonshow", password: "password4"},
    {username: "heisenberg", password: "password5"}
]

#authetication method to check and verify if username/password cominations exists
def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
    end
  end
  "Credentials were not correct"
end

# program execution flow
puts "Welcome to the authenticator"
25.times {print "-"}
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

attemps = 1
while attemps < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication
  puts "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase
  break if input == "n"
  attemps += 1
end
puts "You have exceeded the number of attempts" if attemps == 4