# Strings Part 1 and Part 2

sentence = "My name is Michelle"
p sentence # "My name is Michelle"

# String Concatenation
first_name = "Michelle"
last_name = "Loh"
full_name = first_name + " " + last_name
puts full_name  # Michelle Loh

# String Interpolation
# does not work with single quotation('')
puts "My first name is #{first_name} and my last name is #{last_name}"  # My first name is Michelle and my last name is Loh
puts 'My first name is #{first_name} and my last name is #{last_name}'  # My first name is #{first_name} and my last name is #{last_name}

# Using method
puts full_name.class    # String
# puts full_name.methods        # check methods available for class type by default
puts 10.class           # Integer
puts 10.to_s.class      # String(Method Chaining)

puts full_name.length       # 12
puts full_name.reverse      # hoL ellehciM
puts full_name.capitalize   # Michelle loh (capitalize - returns copy of the string with only the first char in uppercase)
puts full_name.empty?       # false
puts "".empty?              # true
puts "".nil?                # false (even though it is empty, it is not nil)
puts nil.nil?               # true

# sub vs gsub
puts sentence = "Welcome to the jungle jungle" # Welcome to the jungle jungle
puts sentence.sub("jungle", "utopia")   # Welcome to the utopia jungle
puts sentence.gsub("jungle", "utopia")  # Welcome to the utopia utopia

# Variable assignment
puts first_name                 # Michelle
new_first_name = first_name
puts new_first_name             # Michelle
first_name = "Abc"
puts first_name                 # Abc
puts new_first_name             # Michelle

# Escaping
p 'My first name is #{first_name}'      # "My first name is \#{first_name}"
puts 'My first name is #{first_name}'   # My first name is #{first_name}
print 'My first name is #{first_name}'  # My first name is #{first_name}

p "My first name is \#{first_name}"     # "My first name is \#{first_name}"
p 'A asked \'Hey, how are you?\''       # "A asked 'Hey, how are you?'"
puts 'A asked \'Hey, how are you?\''    # A asked 'Hey, how are you?'

# Input
puts "What is your first name?"
input = gets.chomp                       # 5
puts "Your first name is #{first_name}"  # Your first name is a
puts input * 2                           # 55
puts input.to_i * 2                      # 10

# gets vs gets.chomp
text1 = gets.chomp          # a
text2 = gets.chomp          # b
puts text1 + text2          # ab

text1 = gets                # a
text2 = gets                # b
puts text1 + text2
# a
# b

# Homework Solution: Analyzer program code
puts "Enter your first name"
first_name = gets.chomp
puts "Enter your last name"
last_name = gets.chomp
full_name = first_name + " " + last_name
puts "Your full name is #{full_name}"
puts "Your full name reversed is #{full_name.reverse}"
puts "Your name has #{full_name.length - 1} characters in it"