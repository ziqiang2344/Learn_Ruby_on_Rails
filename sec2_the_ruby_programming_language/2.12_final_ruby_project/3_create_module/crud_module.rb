module Crud
    require 'bcrypt'
    puts "Module CRUD activated"
  
    # Hash the password
    def self.create_hash_digest(password)
      BCrypt::Password.create(password)
    end
  
    # Verify the password
    def self.verify_hash_digest(password)
      BCrypt::Password.new(password)
    end
  
    # Convert users password to hashed passwords
    def self.create_secure_users(list_of_users)
      list_of_users.each do |user_record|
        user_record[:password] = create_hash_digest(user_record[:password])
      end
      list_of_users
    end
  
    # Verify whether the user is in the list and whether the password input is correct
    def self.authenticate_user(username, password, list_of_users)
      list_of_users.each do |user_record|
        if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
          return user_record
        end
      end
      "Credentials were not correct"
    end
  end