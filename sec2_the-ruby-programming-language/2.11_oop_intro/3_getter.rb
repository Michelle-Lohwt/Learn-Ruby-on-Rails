# Introduce Getter

class Student
  @first_name
  @last_name
  @email
  @username
  @password

  def to_s
    "First name: #{@first_name}"
  end

  # Method
  def first_name(name)
    @first_name = name
  end

  # Setter
  def first_name=(name)
    @first_name = name
  end

  # Getter
  def first_name
    @first_name
  end
end

michelle = Student.new
puts michelle                         # First name:         //(accessing the to_s built-in method)

# (Refer line 42 to understand why line 34, 35 is commented out)
# michelle.first_name("Michelle")
# puts michelle                       # in `first_name': wrong number of arguments (given 1, expected 0) (ArgumentError)

# Setter
michelle.first_name = "Haha"
puts michelle                         # First name: Haha

# Getter
# If need Getter, cannot have method
puts michelle.first_name              # Haha