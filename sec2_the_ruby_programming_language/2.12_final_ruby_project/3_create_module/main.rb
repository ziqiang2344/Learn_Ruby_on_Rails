require_relative 'crud_module'

# LOAD_PATH << "."       // '.' is the universal sign for the current directory
# require 'crud_module'  // this will not work if the module is not in the same directory

users = [
  {username: "qiang", password: "password1"},
  {username: "pineapple", password: "password2"},
  {username: "orange", password: "password3"},
  {username: "dragonfruit", password: "password4"},
  {username: "papaya", password: "password5"}
]

hashed_users = Crud.create_secure_users(users)
puts hashed_users