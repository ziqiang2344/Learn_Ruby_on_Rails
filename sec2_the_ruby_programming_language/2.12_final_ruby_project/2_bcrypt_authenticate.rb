require 'bcrypt'

users = [
  {username: "qiang", password: "password1"},
  {username: "pineapple", password: "password2"},
  {username: "orange", password: "password3"},
  {username: "dragonfruit", password: "password4"},
  {username: "papaya", password: "password5"}
]

# Hash the password
def create_hash_digest(password)
  BCrypt::Password.create(password)
end

# Verify the password
def verify_hash_digest(password)
  BCrypt::Password.new(password)
end

# Convert users password to hashed passwords
def create_secure_users(list_of_users)
  list_of_users.each do |user_record|
    user_record[:password] = create_hash_digest(user_record[:password])
  end
  list_of_users
end

# Verify users such that they are in the list and the password input is correct
def authenticate_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
      return user_record
    end
  end
  "Credentials were not correct"
end

# Hashing users' password
new_users = create_secure_users(users)

# The list will be printed out which indicating that there is a user name "papaya" and the password is correct in new_users
# else it will print out "Credentials were not correct"
puts authenticate_user("papaya", "password5", new_users)
puts authenticate_user("papaya", "password3", new_users) #Credentials were not correct