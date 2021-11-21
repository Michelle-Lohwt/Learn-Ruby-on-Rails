# attr_, setter and getter

class Student
  # attr_accessor
  # automatically creater getter and setter
  attr_accessor :first_name, :last_name, :email

  # attr_reader
  # only allow getter (NO setter)
  attr_reader :username
  
  @first_name
  @last_name
  @email
  @username = "michelle1"
  @password

  def to_s
    "First name: #{@first_name}"
    "Username: #{username}"
  end

end

michelle = Student.new
michelle.first_name = "Michelle"
michelle.last_name = "Loh"
michelle.email = "michelle@example.com"

puts michelle.first_name    # Michelle
puts michelle.last_name     # Loh
puts michelle.email         # michelle@example.com
puts michelle.username      #                           //nothing is output

# Why nothing is output in Line 32?
# because we did not initialise the object but we initailise in the class