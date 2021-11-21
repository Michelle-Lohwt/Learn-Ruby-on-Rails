# initialize

class Student
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
puts michelle     # First name: Michelle, Last name: Loh, Username: michelle1, Email: michelle@example.com, Password: password1
puts de           # First name: De, Last name: Do, Username: de1, Email: de@example.com, Password: password2

michelle.last_name = de.last_name
puts michelle     # First name: Michelle, Last name: Do, Username: michelle1, Email: michelle@example.com, Password: password1