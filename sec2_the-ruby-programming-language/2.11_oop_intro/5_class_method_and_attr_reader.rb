# method and attr_reader

class Student
  attr_accessor :first_name, :last_name, :email
  attr_reader :username
  
  @first_name
  @last_name
  @email
  @username
  @password

  def to_s
    "First name: #{@first_name}"
  end

  def set_username
    @username = "michelle1"
  end

end

michelle = Student.new
michelle.first_name = "Michelle"
michelle.last_name = "Loh"
michelle.email = "michelle@example.com"
michelle.set_username

puts michelle.first_name    # Michelle
puts michelle.last_name     # Loh
puts michelle.email         # michelle@example.com
puts michelle.username      # michelle1