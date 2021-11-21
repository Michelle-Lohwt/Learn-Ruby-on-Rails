# files are in same directory
require_relative 'crud_module'

# files are not in same directory
# $LOAD_PATH << "."   # `.` is the universal sign for your current directory
# require 'crud_module'

users = [
  {username: "michelle", password: "password1"},
  {username: "apple", password: "password2"},
  {username: "data", password: "password3"},
  {username: "delta", password: "password4"},
  {username: "alpha", password: "password5"},
  ]

hashed_users = Crud.create_secure_users(users)
puts hashed_users