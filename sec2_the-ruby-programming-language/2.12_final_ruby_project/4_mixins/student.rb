require_relative 'crud_module'

class Student
  # if you include module in class
  # you don't need to put `self.` in the module
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, 
    Email: #{@email}, Password: #{@password}"
  end

  def initialize(fname, lname, uname, eml, pwd)
    @first_name = fname
    @last_name = lname
    @username = uname
    @email = eml
    @password = pwd
  end

end

michelle = Student.new("Michelle", "Loh", "michelle1", "michelle@example.com", "password1")
de = Student.new("De", "Do", "de1", "de@example.com", "password2")

hashed_password = michelle.create_hash_digest(michelle.password)
puts hashed_password