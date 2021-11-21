# Introduce to_s, class method and setter

class Student
  @first_name
  @last_name
  @email
  @username
  @password

  # to_s
  # what is it? : a built-in method in every class in Ruby
  # function    : return string representation of the object
  def to_s
    "First name: #{@first_name}"
  end

  # Class Method
  def first_name(name)
    @first_name = name
  end

  # Setter
  def first_name=(name)
    @first_name = name
  end
end

michelle = Student.new
puts michelle                         # First name:         //(accessing the to_s built-in method)

# Modify through Class Method
michelle.first_name("Michelle")
puts michelle                         # First name: Michelle
# puts michelle.first_name            # in `first_name': wrong number of arguments (given 0, expected 1) (ArgumentError)

# Modify through Setter
michelle.first_name = "Haha"
puts michelle                         # First name: Haha
# puts michelle.first_name            # in `first_name': wrong number of arguments (given 0, expected 1) (ArgumentError)