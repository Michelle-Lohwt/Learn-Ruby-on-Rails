require 'bcrypt'

users = [
  {username: "michelle", password: "password1"},
  {username: "apple", password: "password2"},
  {username: "data", password: "password3"},
  {username: "delta", password: "password4"},
  {username: "alpha", password: "password5"},
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

# Verify whether the user is in the list and whether the password input is correct
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

# If it prints out a list that means there is a user name "data" and the password is correct in new_users
# else it will print out "Credentials were not correct"
puts authenticate_user("data", "password3", new_users)
puts authenticate_user("data", "password", new_users)   # Credentials were not correct