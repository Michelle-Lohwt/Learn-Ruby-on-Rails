# Introduce Attributes

class Student
  # Attributes      //private by default
  #                 //cannot be accessed outside the scope of the object
  @first_name
  @last_name
  @email
  @username
  @password
end

michelle = Student.new
puts michelle   # #<Student:0x000055e6a10f5b80>